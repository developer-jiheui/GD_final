<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<!-- User -->
<li class="nav-item navbar-dropdown dropdown-user dropdown">
    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
        <div class="avatar avatar-online">
            <img src="${contextPath}/frontend/assets/img/avatars/1.png" alt
                 class="w-px-40 h-auto rounded-circle">
        </div>
    </a>
    <ul class="dropdown-menu dropdown-menu-end">
        <li>
            <a class="dropdown-item" href="pages-account-settings-account.html">
                <div class="d-flex">
                    <div class="flex-shrink-0 me-3">
                        <div class="avatar avatar-online">
                            <img src="${contextPath}/frontend/assets/img/avatars/1.png" alt
                                 class="w-px-40 h-auto rounded-circle">
                        </div>
                    </div>
                    <div class="flex-grow-1">
                        <span class="fw-medium d-block">John Doe</span>
                        <small class="text-muted">Admin</small>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <div class="dropdown-divider"></div>
        </li>
        <li>
            <a class="dropdown-item" href="pages-profile-user.html">
                <i class="bx bx-user me-2"></i>
                <span class="align-middle">My Profile</span>
            </a>
        </li>
        <li>
            <a class="dropdown-item" href="pages-account-settings-account.html">
                <i class="bx bx-cog me-2"></i>
                <span class="align-middle">Settings</span>
            </a>
        </li>
        <li>
            <a class="dropdown-item" href="pages-account-settings-billing.html">
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
            <a class="dropdown-item" href="pages-faq.html">
                <i class="bx bx-help-circle me-2"></i>
                <span class="align-middle">FAQ</span>
            </a>
        </li>
        <li>
            <a class="dropdown-item" href="pages-pricing.html">
                <i class="bx bx-dollar me-2"></i>
                <span class="align-middle">Pricing</span>
            </a>
        </li>
        <li>
            <div class="dropdown-divider"></div>
        </li>
        <li>
            <a class="dropdown-item" href="auth-login-cover.html" target="_blank">
                <i class="bx bx-power-off me-2"></i>
                <span class="align-middle">Log Out</span>
            </a>
        </li>
    </ul>
</li>
<!--/ User -->


</ul>
</div>


<!-- Search Small Screens -->
<div class="navbar-search-wrapper search-input-wrapper  d-none">
    <input type="text" class="form-control search-input container-xxl border-0" placeholder="Search..."
           aria-label="Search...">
    <i class="bx bx-x bx-sm search-toggler cursor-pointer"></i>
</div>


</nav>


<!-- / Navbar -->