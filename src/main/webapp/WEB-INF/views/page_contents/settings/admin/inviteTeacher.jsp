<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
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

        <div class="flex-shrink-1 flex-grow-1 container-p-x container-p-y">


            <div class="row g-4 mb-4">
                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-start justify-content-between">
                                <div class="content-left">
                                    <span>Session</span>
                                    <div class="d-flex align-items-end mt-2">
                                        <h4 class="mb-0 me-2">21,459</h4>
                                        <small class="text-success">(+29%)</small>
                                    </div>
                                    <p class="mb-0">Total Users</p>
                                </div>
                                <div class="avatar">
            <span class="avatar-initial rounded bg-label-primary">
              <i class="bx bx-user bx-sm"></i>
            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-start justify-content-between">
                                <div class="content-left">
                                    <span>Paid Users</span>
                                    <div class="d-flex align-items-end mt-2">
                                        <h4 class="mb-0 me-2">4,567</h4>
                                        <small class="text-success">(+18%)</small>
                                    </div>
                                    <p class="mb-0">Last week analytics </p>
                                </div>
                                <div class="avatar">
            <span class="avatar-initial rounded bg-label-danger">
              <i class="bx bx-user-check bx-sm"></i>
            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-start justify-content-between">
                                <div class="content-left">
                                    <span>Active Users</span>
                                    <div class="d-flex align-items-end mt-2">
                                        <h4 class="mb-0 me-2">19,860</h4>
                                        <small class="text-danger">(-14%)</small>
                                    </div>
                                    <p class="mb-0">Last week analytics</p>
                                </div>
                                <div class="avatar">
            <span class="avatar-initial rounded bg-label-success">
              <i class="bx bx-group bx-sm"></i>
            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-start justify-content-between">
                                <div class="content-left">
                                    <span>Pending Users</span>
                                    <div class="d-flex align-items-end mt-2">
                                        <h4 class="mb-0 me-2">237</h4>
                                        <small class="text-success">(+42%)</small>
                                    </div>
                                    <p class="mb-0">Last week analytics</p>
                                </div>
                                <div class="avatar">
            <span class="avatar-initial rounded bg-label-warning">
              <i class="bx bx-user-voice bx-sm"></i>
            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Users List Table -->
            <div class="card">
                <div class="card-header border-bottom">
                    <h5 class="card-title">Search Filter</h5>
                    <div class="d-flex justify-content-between align-items-center row py-3 gap-3 gap-md-0">
                        <div class="col-md-4 user_role"><select id="UserRole" class="form-select text-capitalize">
                            <option value=""> Select Role</option>
                            <option value="Admin">Admin</option>
                            <option value="Author">Author</option>
                            <option value="Editor">Editor</option>
                            <option value="Maintainer">Maintainer</option>
                            <option value="Subscriber">Subscriber</option>
                        </select></div>
                        <div class="col-md-4 user_plan"><select id="UserPlan" class="form-select text-capitalize">
                            <option value=""> Select Plan</option>
                            <option value="Basic">Basic</option>
                            <option value="Company">Company</option>
                            <option value="Enterprise">Enterprise</option>
                            <option value="Team">Team</option>
                        </select></div>
                        <div class="col-md-4 user_status"><select id="FilterTransaction"
                                                                  class="form-select text-capitalize">
                            <option value=""> Select Status</option>
                            <option value="Pending" class="text-capitalize">Pending</option>
                            <option value="Active" class="text-capitalize">Active</option>
                            <option value="Inactive" class="text-capitalize">Inactive</option>
                        </select></div>
                    </div>
                </div>
                <div class="card-datatable table-responsive">
                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer">
                        <div class="row mx-2">
                            <div class="col-md-2">
                                <div class="me-3">
                                    <div class="dataTables_length" id="DataTables_Table_0_length"><label><select
                                            name="DataTables_Table_0_length" aria-controls="DataTables_Table_0"
                                            class="form-select">
                                        <option value="10">10</option>
                                        <option value="25">25</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                    </select></label></div>
                                </div>
                            </div>
                            <div class="col-md-10">
                                <div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-end flex-md-row flex-column mb-3 mb-md-0">
                                    <div id="DataTables_Table_0_filter" class="dataTables_filter"><label><input
                                            type="search" class="form-control" placeholder="Search.."
                                            aria-controls="DataTables_Table_0"></label></div>
                                    <div class="dt-buttons btn-group flex-wrap">
                                        <div class="btn-group">
                                            <button class="btn buttons-collection dropdown-toggle btn-label-secondary mx-3"
                                                    tabindex="0" aria-controls="DataTables_Table_0" type="button"
                                                    aria-haspopup="dialog" aria-expanded="false"><span><i
                                                    class="bx bx-export me-1"></i>Export</span></button>
                                        </div>
                                        <button class="btn btn-secondary add-new btn-primary" tabindex="0"
                                                aria-controls="DataTables_Table_0" type="button"
                                                data-bs-toggle="offcanvas" data-bs-target="#offcanvasAddUser"><span><i
                                                class="bx bx-plus me-0 me-sm-1"></i><span
                                                class="d-none d-sm-inline-block">Add New User</span></span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <table class="datatables-users table border-top dataTable no-footer dtr-column"
                               id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info"
                               style="width: 1031px;">
                            <thead>
                            <tr>
                                <th class="control sorting_disabled dtr-hidden" rowspan="1" colspan="1"
                                    style="width: 0px; display: none;" aria-label=""></th>
                                <th class="sorting sorting_desc" tabindex="0" aria-controls="DataTables_Table_0"
                                    rowspan="1" colspan="1" style="width: 249px;"
                                    aria-label="User: activate to sort column ascending" aria-sort="descending">User
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1"
                                    colspan="1" style="width: 119px;"
                                    aria-label="Role: activate to sort column ascending">Role
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1"
                                    colspan="1" style="width: 76px;"
                                    aria-label="Plan: activate to sort column ascending">Plan
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1"
                                    colspan="1" style="width: 150px;"
                                    aria-label="Billing: activate to sort column ascending">Billing
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1"
                                    colspan="1" style="width: 73px;"
                                    aria-label="Status: activate to sort column ascending">Status
                                </th>
                                <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 98px;"
                                    aria-label="Actions">Actions
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="odd">
                                <td class="  control" tabindex="0" style="display: none;"></td>
                                <td class="sorting_1">
                                    <div class="d-flex justify-content-start align-items-center user-name">
                                        <div class="avatar-wrapper">
                                            <div class="avatar avatar-sm me-3"><img src="../../assets/img/avatars/2.png"
                                                                                    alt="Avatar" class="rounded-circle">
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column"><a href="app-user-view-account.html"
                                                                           class="text-body text-truncate"><span
                                                class="fw-medium">Zsazsa McCleverty</span></a><small class="text-muted">zmcclevertye@soundcloud.com</small>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-truncate d-flex align-items-center"><span
                                        class="badge badge-center rounded-pill bg-label-primary w-px-30 h-px-30 me-2"><i
                                        class="bx bx-pie-chart-alt bx-xs"></i></span>Maintainer</span></td>
                                <td><span class="fw-medium">Enterprise</span></td>
                                <td>Auto Debit</td>
                                <td><span class="badge bg-label-success">Active</span></td>
                                <td>
                                    <div class="d-inline-block text-nowrap">
                                        <button class="btn btn-sm btn-icon"><i class="bx bx-edit"></i></button>
                                        <button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i>
                                        </button>
                                        <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown"><i
                                                class="bx bx-dots-vertical-rounded me-2"></i></button>
                                        <div class="dropdown-menu dropdown-menu-end m-0"><a
                                                href="app-user-view-account.html" class="dropdown-item">View</a><a
                                                href="javascript:;" class="dropdown-item">Suspend</a></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td class="  control" tabindex="0" style="display: none;"></td>
                                <td class="sorting_1">
                                    <div class="d-flex justify-content-start align-items-center user-name">
                                        <div class="avatar-wrapper">
                                            <div class="avatar avatar-sm me-3"><img src="../../assets/img/avatars/7.png"
                                                                                    alt="Avatar" class="rounded-circle">
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column"><a href="app-user-view-account.html"
                                                                           class="text-body text-truncate"><span
                                                class="fw-medium">Yoko Pottie</span></a><small class="text-muted">ypottiec@privacy.gov.au</small>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-truncate d-flex align-items-center"><span
                                        class="badge badge-center rounded-pill bg-label-warning w-px-30 h-px-30 me-2"><i
                                        class="bx bx-user bx-xs"></i></span>Subscriber</span></td>
                                <td><span class="fw-medium">Basic</span></td>
                                <td>Auto Debit</td>
                                <td><span class="badge bg-label-secondary">Inactive</span></td>
                                <td>
                                    <div class="d-inline-block text-nowrap">
                                        <button class="btn btn-sm btn-icon"><i class="bx bx-edit"></i></button>
                                        <button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i>
                                        </button>
                                        <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown"><i
                                                class="bx bx-dots-vertical-rounded me-2"></i></button>
                                        <div class="dropdown-menu dropdown-menu-end m-0"><a
                                                href="app-user-view-account.html" class="dropdown-item">View</a><a
                                                href="javascript:;" class="dropdown-item">Suspend</a></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td class="  control" tabindex="0" style="display: none;"></td>
                                <td class="sorting_1">
                                    <div class="d-flex justify-content-start align-items-center user-name">
                                        <div class="avatar-wrapper">
                                            <div class="avatar avatar-sm me-3"><img src="../../assets/img/avatars/6.png"
                                                                                    alt="Avatar" class="rounded-circle">
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column"><a href="app-user-view-account.html"
                                                                           class="text-body text-truncate"><span
                                                class="fw-medium">Wesley Burland</span></a><small class="text-muted">wburlandj@uiuc.edu</small>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-truncate d-flex align-items-center"><span
                                        class="badge badge-center rounded-pill bg-label-info w-px-30 h-px-30 me-2"><i
                                        class="bx bx-edit bx-xs"></i></span>Editor</span></td>
                                <td><span class="fw-medium">Team</span></td>
                                <td>Auto Debit</td>
                                <td><span class="badge bg-label-secondary">Inactive</span></td>
                                <td>
                                    <div class="d-inline-block text-nowrap">
                                        <button class="btn btn-sm btn-icon"><i class="bx bx-edit"></i></button>
                                        <button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i>
                                        </button>
                                        <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown"><i
                                                class="bx bx-dots-vertical-rounded me-2"></i></button>
                                        <div class="dropdown-menu dropdown-menu-end m-0"><a
                                                href="app-user-view-account.html" class="dropdown-item">View</a><a
                                                href="javascript:;" class="dropdown-item">Suspend</a></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td class="  control" tabindex="0" style="display: none;"></td>
                                <td class="sorting_1">
                                    <div class="d-flex justify-content-start align-items-center user-name">
                                        <div class="avatar-wrapper">
                                            <div class="avatar avatar-sm me-3"><span
                                                    class="avatar-initial rounded-circle bg-label-primary">VK</span>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column"><a href="app-user-view-account.html"
                                                                           class="text-body text-truncate"><span
                                                class="fw-medium">Vladamir Koschek</span></a><small class="text-muted">vkoschek17@abc.net.au</small>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-truncate d-flex align-items-center"><span
                                        class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30 me-2"><i
                                        class="bx bx-cog bx-xs"></i></span>Author</span></td>
                                <td><span class="fw-medium">Team</span></td>
                                <td>Manual - Paypal</td>
                                <td><span class="badge bg-label-success">Active</span></td>
                                <td>
                                    <div class="d-inline-block text-nowrap">
                                        <button class="btn btn-sm btn-icon"><i class="bx bx-edit"></i></button>
                                        <button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i>
                                        </button>
                                        <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown"><i
                                                class="bx bx-dots-vertical-rounded me-2"></i></button>
                                        <div class="dropdown-menu dropdown-menu-end m-0"><a
                                                href="app-user-view-account.html" class="dropdown-item">View</a><a
                                                href="javascript:;" class="dropdown-item">Suspend</a></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td class="  control" tabindex="0" style="display: none;"></td>
                                <td class="sorting_1">
                                    <div class="d-flex justify-content-start align-items-center user-name">
                                        <div class="avatar-wrapper">
                                            <div class="avatar avatar-sm me-3"><span
                                                    class="avatar-initial rounded-circle bg-label-info">TW</span></div>
                                        </div>
                                        <div class="d-flex flex-column"><a href="app-user-view-account.html"
                                                                           class="text-body text-truncate"><span
                                                class="fw-medium">Tyne Widmore</span></a><small class="text-muted">twidmore12@bravesites.com</small>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-truncate d-flex align-items-center"><span
                                        class="badge badge-center rounded-pill bg-label-warning w-px-30 h-px-30 me-2"><i
                                        class="bx bx-user bx-xs"></i></span>Subscriber</span></td>
                                <td><span class="fw-medium">Team</span></td>
                                <td>Manual - Cash</td>
                                <td><span class="badge bg-label-warning">Pending</span></td>
                                <td>
                                    <div class="d-inline-block text-nowrap">
                                        <button class="btn btn-sm btn-icon"><i class="bx bx-edit"></i></button>
                                        <button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i>
                                        </button>
                                        <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown"><i
                                                class="bx bx-dots-vertical-rounded me-2"></i></button>
                                        <div class="dropdown-menu dropdown-menu-end m-0"><a
                                                href="app-user-view-account.html" class="dropdown-item">View</a><a
                                                href="javascript:;" class="dropdown-item">Suspend</a></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td class="  control" tabindex="0" style="display: none;"></td>
                                <td class="sorting_1">
                                    <div class="d-flex justify-content-start align-items-center user-name">
                                        <div class="avatar-wrapper">
                                            <div class="avatar avatar-sm me-3"><span
                                                    class="avatar-initial rounded-circle bg-label-success">TB</span>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column"><a href="app-user-view-account.html"
                                                                           class="text-body text-truncate"><span
                                                class="fw-medium">Travus Bruntjen</span></a><small class="text-muted">tbruntjeni@sitemeter.com</small>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-truncate d-flex align-items-center"><span
                                        class="badge badge-center rounded-pill bg-label-secondary w-px-30 h-px-30 me-2"><i
                                        class="bx bx-mobile-alt bx-xs"></i></span>Admin</span></td>
                                <td><span class="fw-medium">Enterprise</span></td>
                                <td>Manual - Cash</td>
                                <td><span class="badge bg-label-success">Active</span></td>
                                <td>
                                    <div class="d-inline-block text-nowrap">
                                        <button class="btn btn-sm btn-icon"><i class="bx bx-edit"></i></button>
                                        <button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i>
                                        </button>
                                        <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown"><i
                                                class="bx bx-dots-vertical-rounded me-2"></i></button>
                                        <div class="dropdown-menu dropdown-menu-end m-0"><a
                                                href="app-user-view-account.html" class="dropdown-item">View</a><a
                                                href="javascript:;" class="dropdown-item">Suspend</a></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td class="  control" tabindex="0" style="display: none;"></td>
                                <td class="sorting_1">
                                    <div class="d-flex justify-content-start align-items-center user-name">
                                        <div class="avatar-wrapper">
                                            <div class="avatar avatar-sm me-3"><img src="../../assets/img/avatars/1.png"
                                                                                    alt="Avatar" class="rounded-circle">
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column"><a href="app-user-view-account.html"
                                                                           class="text-body text-truncate"><span
                                                class="fw-medium">Stu Delamaine</span></a><small class="text-muted">sdelamainek@who.int</small>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-truncate d-flex align-items-center"><span
                                        class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30 me-2"><i
                                        class="bx bx-cog bx-xs"></i></span>Author</span></td>
                                <td><span class="fw-medium">Basic</span></td>
                                <td>Auto Debit</td>
                                <td><span class="badge bg-label-warning">Pending</span></td>
                                <td>
                                    <div class="d-inline-block text-nowrap">
                                        <button class="btn btn-sm btn-icon"><i class="bx bx-edit"></i></button>
                                        <button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i>
                                        </button>
                                        <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown"><i
                                                class="bx bx-dots-vertical-rounded me-2"></i></button>
                                        <div class="dropdown-menu dropdown-menu-end m-0"><a
                                                href="app-user-view-account.html" class="dropdown-item">View</a><a
                                                href="javascript:;" class="dropdown-item">Suspend</a></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td class="  control" tabindex="0" style="display: none;"></td>
                                <td class="sorting_1">
                                    <div class="d-flex justify-content-start align-items-center user-name">
                                        <div class="avatar-wrapper">
                                            <div class="avatar avatar-sm me-3"><span
                                                    class="avatar-initial rounded-circle bg-label-primary">SO</span>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column"><a href="app-user-view-account.html"
                                                                           class="text-body text-truncate"><span
                                                class="fw-medium">Saunder Offner</span></a><small class="text-muted">soffner19@mac.com</small>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-truncate d-flex align-items-center"><span
                                        class="badge badge-center rounded-pill bg-label-primary w-px-30 h-px-30 me-2"><i
                                        class="bx bx-pie-chart-alt bx-xs"></i></span>Maintainer</span></td>
                                <td><span class="fw-medium">Enterprise</span></td>
                                <td>Auto Debit</td>
                                <td><span class="badge bg-label-warning">Pending</span></td>
                                <td>
                                    <div class="d-inline-block text-nowrap">
                                        <button class="btn btn-sm btn-icon"><i class="bx bx-edit"></i></button>
                                        <button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i>
                                        </button>
                                        <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown"><i
                                                class="bx bx-dots-vertical-rounded me-2"></i></button>
                                        <div class="dropdown-menu dropdown-menu-end m-0"><a
                                                href="app-user-view-account.html" class="dropdown-item">View</a><a
                                                href="javascript:;" class="dropdown-item">Suspend</a></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td class="  control" tabindex="0" style="display: none;"></td>
                                <td class="sorting_1">
                                    <div class="d-flex justify-content-start align-items-center user-name">
                                        <div class="avatar-wrapper">
                                            <div class="avatar avatar-sm me-3"><span
                                                    class="avatar-initial rounded-circle bg-label-dark">SM</span></div>
                                        </div>
                                        <div class="d-flex flex-column"><a href="app-user-view-account.html"
                                                                           class="text-body text-truncate"><span
                                                class="fw-medium">Stephen MacGilfoyle</span></a><small
                                                class="text-muted">smacgilfoyley@bigcartel.com</small></div>
                                    </div>
                                </td>
                                <td><span class="text-truncate d-flex align-items-center"><span
                                        class="badge badge-center rounded-pill bg-label-primary w-px-30 h-px-30 me-2"><i
                                        class="bx bx-pie-chart-alt bx-xs"></i></span>Maintainer</span></td>
                                <td><span class="fw-medium">Company</span></td>
                                <td>Manual - Paypal</td>
                                <td><span class="badge bg-label-warning">Pending</span></td>
                                <td>
                                    <div class="d-inline-block text-nowrap">
                                        <button class="btn btn-sm btn-icon"><i class="bx bx-edit"></i></button>
                                        <button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i>
                                        </button>
                                        <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown"><i
                                                class="bx bx-dots-vertical-rounded me-2"></i></button>
                                        <div class="dropdown-menu dropdown-menu-end m-0"><a
                                                href="app-user-view-account.html" class="dropdown-item">View</a><a
                                                href="javascript:;" class="dropdown-item">Suspend</a></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td class="  control" tabindex="0" style="display: none;"></td>
                                <td class="sorting_1">
                                    <div class="d-flex justify-content-start align-items-center user-name">
                                        <div class="avatar-wrapper">
                                            <div class="avatar avatar-sm me-3"><img src="../../assets/img/avatars/9.png"
                                                                                    alt="Avatar" class="rounded-circle">
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column"><a href="app-user-view-account.html"
                                                                           class="text-body text-truncate"><span
                                                class="fw-medium">Skip Hebblethwaite</span></a><small
                                                class="text-muted">shebblethwaite10@arizona.edu</small></div>
                                    </div>
                                </td>
                                <td><span class="text-truncate d-flex align-items-center"><span
                                        class="badge badge-center rounded-pill bg-label-secondary w-px-30 h-px-30 me-2"><i
                                        class="bx bx-mobile-alt bx-xs"></i></span>Admin</span></td>
                                <td><span class="fw-medium">Company</span></td>
                                <td>Manual - Cash</td>
                                <td><span class="badge bg-label-secondary">Inactive</span></td>
                                <td>
                                    <div class="d-inline-block text-nowrap">
                                        <button class="btn btn-sm btn-icon"><i class="bx bx-edit"></i></button>
                                        <button class="btn btn-sm btn-icon delete-record"><i class="bx bx-trash"></i>
                                        </button>
                                        <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown"><i
                                                class="bx bx-dots-vertical-rounded me-2"></i></button>
                                        <div class="dropdown-menu dropdown-menu-end m-0"><a
                                                href="app-user-view-account.html" class="dropdown-item">View</a><a
                                                href="javascript:;" class="dropdown-item">Suspend</a></div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="row mx-2">
                            <div class="col-sm-12 col-md-6">
                                <div class="dataTables_info" id="DataTables_Table_0_info" role="status"
                                     aria-live="polite">Showing 1 to 10 of 50 entries
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                                    <ul class="pagination">
                                        <li class="paginate_button page-item previous disabled"
                                            id="DataTables_Table_0_previous"><a aria-controls="DataTables_Table_0"
                                                                                aria-disabled="true" role="link"
                                                                                data-dt-idx="previous" tabindex="-1"
                                                                                class="page-link">Previous</a></li>
                                        <li class="paginate_button page-item active"><a href="#"
                                                                                        aria-controls="DataTables_Table_0"
                                                                                        role="link" aria-current="page"
                                                                                        data-dt-idx="0" tabindex="0"
                                                                                        class="page-link">1</a></li>
                                        <li class="paginate_button page-item "><a href="#"
                                                                                  aria-controls="DataTables_Table_0"
                                                                                  role="link" data-dt-idx="1"
                                                                                  tabindex="0" class="page-link">2</a>
                                        </li>
                                        <li class="paginate_button page-item "><a href="#"
                                                                                  aria-controls="DataTables_Table_0"
                                                                                  role="link" data-dt-idx="2"
                                                                                  tabindex="0" class="page-link">3</a>
                                        </li>
                                        <li class="paginate_button page-item "><a href="#"
                                                                                  aria-controls="DataTables_Table_0"
                                                                                  role="link" data-dt-idx="3"
                                                                                  tabindex="0" class="page-link">4</a>
                                        </li>
                                        <li class="paginate_button page-item "><a href="#"
                                                                                  aria-controls="DataTables_Table_0"
                                                                                  role="link" data-dt-idx="4"
                                                                                  tabindex="0" class="page-link">5</a>
                                        </li>
                                        <li class="paginate_button page-item next" id="DataTables_Table_0_next"><a
                                                href="#" aria-controls="DataTables_Table_0" role="link"
                                                data-dt-idx="next" tabindex="0" class="page-link">Next</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Offcanvas to add new user -->
                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasAddUser"
                     aria-labelledby="offcanvasAddUserLabel">
                    <div class="offcanvas-header">
                        <h5 id="offcanvasAddUserLabel" class="offcanvas-title">Add User</h5>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body mx-0 flex-grow-0">
                        <form class="add-new-user pt-0 fv-plugins-bootstrap5 fv-plugins-framework" id="addNewUserForm"
                              onsubmit="return false" novalidate="novalidate">
                            <div class="mb-3 fv-plugins-icon-container">
                                <label class="form-label" for="add-user-fullname">Full Name</label>
                                <input type="text" class="form-control" id="add-user-fullname" placeholder="John Doe"
                                       name="userFullname" aria-label="John Doe">
                                <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>
                            </div>
                            <div class="mb-3 fv-plugins-icon-container">
                                <label class="form-label" for="add-user-email">Email</label>
                                <input type="text" id="add-user-email" class="form-control"
                                       placeholder="john.doe@example.com" aria-label="john.doe@example.com"
                                       name="userEmail">
                                <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="add-user-contact">Contact</label>
                                <input type="text" id="add-user-contact" class="form-control phone-mask"
                                       placeholder="+1 (609) 988-44-11" aria-label="john.doe@example.com"
                                       name="userContact">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="add-user-company">Company</label>
                                <input type="text" id="add-user-company" class="form-control"
                                       placeholder="Web Developer" aria-label="jdoe1" name="companyName">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="country">Country</label>
                                <div class="position-relative"><select id="country"
                                                                       class="select2 form-select select2-hidden-accessible"
                                                                       data-select2-id="country" tabindex="-1"
                                                                       aria-hidden="true">
                                    <option value="" data-select2-id="2">Select</option>
                                    <option value="Australia">Australia</option>
                                    <option value="Bangladesh">Bangladesh</option>
                                    <option value="Belarus">Belarus</option>
                                    <option value="Brazil">Brazil</option>
                                    <option value="Canada">Canada</option>
                                    <option value="China">China</option>
                                    <option value="France">France</option>
                                    <option value="Germany">Germany</option>
                                    <option value="India">India</option>
                                    <option value="Indonesia">Indonesia</option>
                                    <option value="Israel">Israel</option>
                                    <option value="Italy">Italy</option>
                                    <option value="Japan">Japan</option>
                                    <option value="Korea">Korea, Republic of</option>
                                    <option value="Mexico">Mexico</option>
                                    <option value="Philippines">Philippines</option>
                                    <option value="Russia">Russian Federation</option>
                                    <option value="South Africa">South Africa</option>
                                    <option value="Thailand">Thailand</option>
                                    <option value="Turkey">Turkey</option>
                                    <option value="Ukraine">Ukraine</option>
                                    <option value="United Arab Emirates">United Arab Emirates</option>
                                    <option value="United Kingdom">United Kingdom</option>
                                    <option value="United States">United States</option>
                                </select><span class="select2 select2-container select2-container--default" dir="ltr"
                                               data-select2-id="1" style="width: 352px;"><span class="selection"><span
                                        class="select2-selection select2-selection--single" role="combobox"
                                        aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false"
                                        aria-labelledby="select2-country-container"><span
                                        class="select2-selection__rendered" id="select2-country-container"
                                        role="textbox" aria-readonly="true"><span
                                        class="select2-selection__placeholder">Select Country</span></span><span
                                        class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span
                                        class="dropdown-wrapper" aria-hidden="true"></span></span></div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="user-role">User Role</label>
                                <select id="user-role" class="form-select">
                                    <option value="subscriber">Subscriber</option>
                                    <option value="editor">Editor</option>
                                    <option value="maintainer">Maintainer</option>
                                    <option value="author">Author</option>
                                    <option value="admin">Admin</option>
                                </select>
                            </div>
                            <div class="mb-4">
                                <label class="form-label" for="user-plan">Select Plan</label>
                                <select id="user-plan" class="form-select">
                                    <option value="basic">Basic</option>
                                    <option value="enterprise">Enterprise</option>
                                    <option value="company">Company</option>
                                    <option value="team">Team</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary me-sm-3 me-1 data-submit">Submit</button>
                            <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="offcanvas">Cancel
                            </button>
                            <input type="hidden"></form>
                    </div>
                </div>
            </div>


        </div>
        <!-- / Content -->