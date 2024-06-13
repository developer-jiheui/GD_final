<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>
<!-- Content wrapper -->
<div class="content-wrapper">


    <div class="container-xxl d-flex align-items-stretch flex-grow-1 p-0">


        <div class="admin-menu-container flex-shrink-1 flex-grow-0 container-p-x container-p-y">
            <div class="layout-example-sidebar layout-example-content-inner">
                <ul class="admin-menu-inner menu-inner py-1">
                    <li class="menu-header small text-uppercase">
                        <span class="menu-header-text">멤버관리</span>
                        <hr class="my-0"/>
                    </li>
                    <li class="menu-item active">
                        <a href="${contextPath}/admin/settings/admins" class="menu-link">
                            <i class="menu-icon tf-icons bx bx-home-circle"></i>
                            <div data-i18n="Analytics">관리자관리</div>
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="${contextPath}/admin/settings/users" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-notepad'></i>
                            <div data-i18n="Basic">원생관리</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/admin/settings/teachers" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-clipboard'></i>
                            <div data-i18n="Basic">교사관리</div>
                        </a>
                    </li>
                    <li class="menu-header small text-uppercase">
                        <span class="menu-header-text">초대하기</span>
                        <hr class="my-0"/>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/admin/settings/inviteAdmin" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-photo-album'></i>
                            <div data-i18n="Basic">관리자 초대</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/admin/settings/inviteUser" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-calendar'></i>
                            <div data-i18n="Basic">학부모 초대</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/admin/settings/inviteTeacher" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-bone'></i>
                            <div data-i18n="Basic">교사초대</div>
                        </a>
                    </li>

                    <li class="menu-header small text-uppercase">
                        <span class="menu-header-text">원관리</span>
                        <hr class="my-0"/>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/admin/settings/classes" class="menu-link">
                            <i class='menu-icon tf-icons bx bxs-capsule'></i>
                            <div data-i18n="Basic">반 정보 관리</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/admin/settings/classes" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-calendar-check'></i>
                            <div data-i18n="Basic">메뉴 관리</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/admin/settings/center" class="menu-link">
                            <i class='menu-icon tf-icons bx bxs-graduation'></i>
                            <div data-i18n="Basic">원 기본 정보 설정</div>
                        </a>
                    </li>
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
            </div>
        </div>
