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

<%--            <!-- Language -->--%>
<%--            <li class="nav-item dropdown-language dropdown me-2 me-xl-0">--%>
<%--                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">--%>
<%--                    <i class='bx bx-globe bx-sm'></i>--%>
<%--                </a>--%>
<%--                <ul class="dropdown-menu dropdown-menu-end">--%>
<%--                    <li>--%>
<%--                        <a class="dropdown-item" href="javascript:void(0);" data-language="en" data-text-direction="ltr">--%>
<%--                            <span class="align-middle">English</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a class="dropdown-item" href="javascript:void(0);" data-language="fr" data-text-direction="ltr">--%>
<%--                            <span class="align-middle">French</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a class="dropdown-item" href="javascript:void(0);" data-language="ar" data-text-direction="rtl">--%>
<%--                            <span class="align-middle">Arabic</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a class="dropdown-item" href="javascript:void(0);" data-language="de" data-text-direction="ltr">--%>
<%--                            <span class="align-middle">German</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <!-- /Language -->--%>

<%--            <!-- Quick links  -->--%>
<%--            <li class="nav-item dropdown-shortcuts navbar-dropdown dropdown me-2 me-xl-0">--%>
<%--                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">--%>
<%--                    <i class='bx bx-grid-alt bx-sm'></i>--%>
<%--                </a>--%>
<%--                <div class="dropdown-menu dropdown-menu-end py-0">--%>
<%--                    <div class="dropdown-menu-header border-bottom">--%>
<%--                        <div class="dropdown-header d-flex align-items-center py-3">--%>
<%--                            <h5 class="text-body mb-0 me-auto">Shortcuts</h5>--%>
<%--                            <a href="javascript:void(0)" class="dropdown-shortcuts-add text-body" data-bs-toggle="tooltip" data-bs-placement="top" title="Add shortcuts"><i class="bx bx-sm bx-plus-circle"></i></a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="dropdown-shortcuts-list scrollable-container">--%>
<%--                        <div class="row row-bordered overflow-visible g-0">--%>
<%--                            <div class="dropdown-shortcuts-item col">--%>
<%--                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">--%>
<%--                      <i class="bx bx-calendar fs-4"></i>--%>
<%--                    </span>--%>
<%--                                <a href="app-calendar.html" class="stretched-link">Calendar</a>--%>
<%--                                <small class="text-muted mb-0">Appointments</small>--%>
<%--                            </div>--%>
<%--                            <div class="dropdown-shortcuts-item col">--%>
<%--                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">--%>
<%--                      <i class="bx bx-food-menu fs-4"></i>--%>
<%--                    </span>--%>
<%--                                <a href="app-invoice-list.html" class="stretched-link">Invoice App</a>--%>
<%--                                <small class="text-muted mb-0">Manage Accounts</small>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="row row-bordered overflow-visible g-0">--%>
<%--                            <div class="dropdown-shortcuts-item col">--%>
<%--                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">--%>
<%--                      <i class="bx bx-user fs-4"></i>--%>
<%--                    </span>--%>
<%--                                <a href="app-user-list.html" class="stretched-link">User App</a>--%>
<%--                                <small class="text-muted mb-0">Manage Users</small>--%>
<%--                            </div>--%>
<%--                            <div class="dropdown-shortcuts-item col">--%>
<%--                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">--%>
<%--                      <i class="bx bx-check-shield fs-4"></i>--%>
<%--                    </span>--%>
<%--                                <a href="app-access-roles.html" class="stretched-link">Role Management</a>--%>
<%--                                <small class="text-muted mb-0">Permission</small>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="row row-bordered overflow-visible g-0">--%>
<%--                            <div class="dropdown-shortcuts-item col">--%>
<%--                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">--%>
<%--                      <i class="bx bx-pie-chart-alt-2 fs-4"></i>--%>
<%--                    </span>--%>
<%--                                <a href="index.html" class="stretched-link">Dashboard</a>--%>
<%--                                <small class="text-muted mb-0">User Profile</small>--%>
<%--                            </div>--%>
<%--                            <div class="dropdown-shortcuts-item col">--%>
<%--                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">--%>
<%--                      <i class="bx bx-cog fs-4"></i>--%>
<%--                    </span>--%>
<%--                                <a href="pages-account-settings-account.html" class="stretched-link">Setting</a>--%>
<%--                                <small class="text-muted mb-0">Account Settings</small>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="row row-bordered overflow-visible g-0">--%>
<%--                            <div class="dropdown-shortcuts-item col">--%>
<%--                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">--%>
<%--                      <i class="bx bx-help-circle fs-4"></i>--%>
<%--                    </span>--%>
<%--                                <a href="pages-faq.html" class="stretched-link">FAQs</a>--%>
<%--                                <small class="text-muted mb-0">FAQs & Articles</small>--%>
<%--                            </div>--%>
<%--                            <div class="dropdown-shortcuts-item col">--%>
<%--                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">--%>
<%--                      <i class="bx bx-window-open fs-4"></i>--%>
<%--                    </span>--%>
<%--                                <a href="modal-examples.html" class="stretched-link">Modals</a>--%>
<%--                                <small class="text-muted mb-0">Useful Popups</small>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <!-- Quick links -->--%>


<%--            <!-- Style Switcher -->--%>
<%--            <li class="nav-item dropdown-style-switcher dropdown me-2 me-xl-0">--%>
<%--                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">--%>
<%--                    <i class='bx bx-sm'></i>--%>
<%--                </a>--%>
<%--                <ul class="dropdown-menu dropdown-menu-end dropdown-styles">--%>
<%--                    <li>--%>
<%--                        <a class="dropdown-item" href="javascript:void(0);" data-theme="light">--%>
<%--                            <span class="align-middle"><i class='bx bx-sun me-2'></i>Light</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a class="dropdown-item" href="javascript:void(0);" data-theme="dark">--%>
<%--                            <span class="align-middle"><i class="bx bx-moon me-2"></i>Dark</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a class="dropdown-item" href="javascript:void(0);" data-theme="system">--%>
<%--                            <span class="align-middle"><i class="bx bx-desktop me-2"></i>System</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <!-- / Style Switcher-->--%>


<%--            <!-- Notification -->--%>
<%--            <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-1">--%>
<%--                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">--%>
<%--                    <i class="bx bx-bell bx-sm"></i>--%>
<%--                    <span class="badge bg-danger rounded-pill badge-notifications">5</span>--%>
<%--                </a>--%>
<%--                <ul class="dropdown-menu dropdown-menu-end py-0">--%>
<%--                    <li class="dropdown-menu-header border-bottom">--%>
<%--                        <div class="dropdown-header d-flex align-items-center py-3">--%>
<%--                            <h5 class="text-body mb-0 me-auto">Notification</h5>--%>
<%--                            <a href="javascript:void(0)" class="dropdown-notifications-all text-body" data-bs-toggle="tooltip" data-bs-placement="top" title="Mark all as read"><i class="bx fs-4 bx-envelope-open"></i></a>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li class="dropdown-notifications-list scrollable-container">--%>
<%--                        <ul class="list-group list-group-flush">--%>
<%--                            <li class="list-group-item list-group-item-action dropdown-notifications-item">--%>
<%--                                <div class="d-flex">--%>
<%--                                    <div class="flex-shrink-0 me-3">--%>
<%--                                        <div class="avatar">--%>
<%--                                            <img src="../../assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle">--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow-1">--%>
<%--                                        <h6 class="mb-1">Congratulation Lettie 🎉</h6>--%>
<%--                                        <p class="mb-0">Won the monthly best seller gold badge</p>--%>
<%--                                        <small class="text-muted">1h ago</small>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-shrink-0 dropdown-notifications-actions">--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item list-group-item-action dropdown-notifications-item">--%>
<%--                                <div class="d-flex">--%>
<%--                                    <div class="flex-shrink-0 me-3">--%>
<%--                                        <div class="avatar">--%>
<%--                                            <span class="avatar-initial rounded-circle bg-label-danger">CF</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow-1">--%>
<%--                                        <h6 class="mb-1">Charles Franklin</h6>--%>
<%--                                        <p class="mb-0">Accepted your connection</p>--%>
<%--                                        <small class="text-muted">12hr ago</small>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-shrink-0 dropdown-notifications-actions">--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">--%>
<%--                                <div class="d-flex">--%>
<%--                                    <div class="flex-shrink-0 me-3">--%>
<%--                                        <div class="avatar">--%>
<%--                                            <img src="../../assets/img/avatars/2.png" alt class="w-px-40 h-auto rounded-circle">--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow-1">--%>
<%--                                        <h6 class="mb-1">New Message ✉️</h6>--%>
<%--                                        <p class="mb-0">You have new message from Natalie</p>--%>
<%--                                        <small class="text-muted">1h ago</small>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-shrink-0 dropdown-notifications-actions">--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item list-group-item-action dropdown-notifications-item">--%>
<%--                                <div class="d-flex">--%>
<%--                                    <div class="flex-shrink-0 me-3">--%>
<%--                                        <div class="avatar">--%>
<%--                                            <span class="avatar-initial rounded-circle bg-label-success"><i class="bx bx-cart"></i></span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow-1">--%>
<%--                                        <h6 class="mb-1">Whoo! You have new order 🛒 </h6>--%>
<%--                                        <p class="mb-0">ACME Inc. made new order $1,154</p>--%>
<%--                                        <small class="text-muted">1 day ago</small>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-shrink-0 dropdown-notifications-actions">--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">--%>
<%--                                <div class="d-flex">--%>
<%--                                    <div class="flex-shrink-0 me-3">--%>
<%--                                        <div class="avatar">--%>
<%--                                            <img src="../../assets/img/avatars/9.png" alt class="w-px-40 h-auto rounded-circle">--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow-1">--%>
<%--                                        <h6 class="mb-1">Application has been approved 🚀 </h6>--%>
<%--                                        <p class="mb-0">Your ABC project application has been approved.</p>--%>
<%--                                        <small class="text-muted">2 days ago</small>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-shrink-0 dropdown-notifications-actions">--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">--%>
<%--                                <div class="d-flex">--%>
<%--                                    <div class="flex-shrink-0 me-3">--%>
<%--                                        <div class="avatar">--%>
<%--                                            <span class="avatar-initial rounded-circle bg-label-success"><i class="bx bx-pie-chart-alt"></i></span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow-1">--%>
<%--                                        <h6 class="mb-1">Monthly report is generated</h6>--%>
<%--                                        <p class="mb-0">July monthly financial report is generated </p>--%>
<%--                                        <small class="text-muted">3 days ago</small>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-shrink-0 dropdown-notifications-actions">--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">--%>
<%--                                <div class="d-flex">--%>
<%--                                    <div class="flex-shrink-0 me-3">--%>
<%--                                        <div class="avatar">--%>
<%--                                            <img src="../../assets/img/avatars/5.png" alt class="w-px-40 h-auto rounded-circle">--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow-1">--%>
<%--                                        <h6 class="mb-1">Send connection request</h6>--%>
<%--                                        <p class="mb-0">Peter sent you connection request</p>--%>
<%--                                        <small class="text-muted">4 days ago</small>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-shrink-0 dropdown-notifications-actions">--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item list-group-item-action dropdown-notifications-item">--%>
<%--                                <div class="d-flex">--%>
<%--                                    <div class="flex-shrink-0 me-3">--%>
<%--                                        <div class="avatar">--%>
<%--                                            <img src="../../assets/img/avatars/6.png" alt class="w-px-40 h-auto rounded-circle">--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow-1">--%>
<%--                                        <h6 class="mb-1">New message from Jane</h6>--%>
<%--                                        <p class="mb-0">Your have new message from Jane</p>--%>
<%--                                        <small class="text-muted">5 days ago</small>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-shrink-0 dropdown-notifications-actions">--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">--%>
<%--                                <div class="d-flex">--%>
<%--                                    <div class="flex-shrink-0 me-3">--%>
<%--                                        <div class="avatar">--%>
<%--                                            <span class="avatar-initial rounded-circle bg-label-warning"><i class="bx bx-error"></i></span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-grow-1">--%>
<%--                                        <h6 class="mb-1">CPU is running high</h6>--%>
<%--                                        <p class="mb-0">CPU Utilization Percent is currently at 88.63%,</p>--%>
<%--                                        <small class="text-muted">5 days ago</small>--%>
<%--                                    </div>--%>
<%--                                    <div class="flex-shrink-0 dropdown-notifications-actions">--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>--%>
<%--                                        <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                    <li class="dropdown-menu-footer border-top p-3">--%>
<%--                        <button class="btn btn-primary text-uppercase w-100">view all notifications</button>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <!--/ Notification -->--%>