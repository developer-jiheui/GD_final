<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<ul class="navbar-nav flex-row align-items-center ms-auto">
    <!-- Place this tag where you want the button to render. -->

    <!-- User -->
    <li class="nav-item navbar-dropdown dropdown-user dropdown">
        <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);"
           data-bs-toggle="dropdown">
            <div class="avatar avatar-online">
                <img src="${contextPath}${sessionScope.user.avatar}" alt class="w-px-40 rounded-circle"/>
            </div>
        </a>
        <ul class="dropdown-menu dropdown-menu-end">
            <li>
                <a class="dropdown-item" href="#">
                    <div class="d-flex">
                        <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                                <img src="${contextPath}${sessionScope.user.avatar}" alt
                                     class="w-px-40 rounded-circle"/>
                            </div>
                        </div>
                        <div class="flex-grow-1">
                            <span class="fw-semibold d-block">${sessionScope.user.username}</span>
                            <small class="text-muted">${sessionScope.user.userType}</small>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <div class="dropdown-divider"></div>
            </li>
            <li>
                <a class="dropdown-item" href="${contextPath}/user/profile">
                    <i class="bx bx-user me-2"></i>
                    <span class="align-middle">My Profile</span>
                </a>
            </li>
            <li>
                <a class="dropdown-item" href="${contextPath}/user/settings">
                    <i class="bx bx-cog me-2"></i>
                    <span class="align-middle">Settings</span>
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
</ul>
</div>
</nav>

<!-- / Navbar -->