<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<div class="content-wrapper">

    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">


        <h4 class="py-3 mb-2">Roles List</h4>

        <p>A role provided access to predefined menus and features so that depending on <br> assigned role an administrator can have access to what user needs.</p>
        <!-- Role cards -->
        <div class="row g-4">
            <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <h6 class="fw-normal">Total 4 users</h6>
                            <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Vinnie Mostowy" data-bs-original-title="Vinnie Mostowy">
                                    <img class="rounded-circle" src="../../assets/img/avatars/5.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Allen Rieske" data-bs-original-title="Allen Rieske">
                                    <img class="rounded-circle" src="../../assets/img/avatars/12.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Julee Rossignol" data-bs-original-title="Julee Rossignol">
                                    <img class="rounded-circle" src="../../assets/img/avatars/6.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Kaith D'souza" data-bs-original-title="Kaith D'souza">
                                    <img class="rounded-circle" src="../../assets/img/avatars/15.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="John Doe" data-bs-original-title="John Doe">
                                    <img class="rounded-circle" src="../../assets/img/avatars/1.png" alt="Avatar">
                                </li>
                            </ul>
                        </div>
                        <div class="d-flex justify-content-between align-items-end">
                            <div class="role-heading">
                                <h4 class="mb-1">Administrator</h4>
                                <a href="javascript:;" data-bs-toggle="modal" data-bs-target="#addRoleModal" class="role-edit-modal"><small>Edit Role</small></a>
                            </div>
                            <a href="javascript:void(0);" class="text-muted"><i class="bx bx-copy"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <h6 class="fw-normal">Total 7 users</h6>
                            <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Jimmy Ressula" data-bs-original-title="Jimmy Ressula">
                                    <img class="rounded-circle" src="../../assets/img/avatars/4.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="John Doe" data-bs-original-title="John Doe">
                                    <img class="rounded-circle" src="../../assets/img/avatars/1.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Kristi Lawker" data-bs-original-title="Kristi Lawker">
                                    <img class="rounded-circle" src="../../assets/img/avatars/2.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Kaith D'souza" data-bs-original-title="Kaith D'souza">
                                    <img class="rounded-circle" src="../../assets/img/avatars/15.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Danny Paul" data-bs-original-title="Danny Paul">
                                    <img class="rounded-circle" src="../../assets/img/avatars/7.png" alt="Avatar">
                                </li>
                            </ul>
                        </div>
                        <div class="d-flex justify-content-between align-items-end">
                            <div class="role-heading">
                                <h4 class="mb-1">Manager</h4>
                                <a href="javascript:;" data-bs-toggle="modal" data-bs-target="#addRoleModal" class="role-edit-modal"><small>Edit Role</small></a>
                            </div>
                            <a href="javascript:void(0);" class="text-muted"><i class="bx bx-copy"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <h6 class="fw-normal">Total 5 users</h6>
                            <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Andrew Tye" data-bs-original-title="Andrew Tye">
                                    <img class="rounded-circle" src="../../assets/img/avatars/6.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Rishi Swaat" data-bs-original-title="Rishi Swaat">
                                    <img class="rounded-circle" src="../../assets/img/avatars/9.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Rossie Kim" data-bs-original-title="Rossie Kim">
                                    <img class="rounded-circle" src="../../assets/img/avatars/12.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Kim Merchent" data-bs-original-title="Kim Merchent">
                                    <img class="rounded-circle" src="../../assets/img/avatars/10.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Sam D'souza" data-bs-original-title="Sam D'souza">
                                    <img class="rounded-circle" src="../../assets/img/avatars/13.png" alt="Avatar">
                                </li>
                            </ul>
                        </div>
                        <div class="d-flex justify-content-between align-items-end">
                            <div class="role-heading">
                                <h4 class="mb-1">Users</h4>
                                <a href="javascript:;" data-bs-toggle="modal" data-bs-target="#addRoleModal" class="role-edit-modal"><small>Edit Role</small></a>
                            </div>
                            <a href="javascript:void(0);" class="text-muted"><i class="bx bx-copy"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <h6 class="fw-normal">Total 3 users</h6>
                            <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Kim Karlos" data-bs-original-title="Kim Karlos">
                                    <img class="rounded-circle" src="../../assets/img/avatars/3.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Katy Turner" data-bs-original-title="Katy Turner">
                                    <img class="rounded-circle" src="../../assets/img/avatars/9.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Peter Adward" data-bs-original-title="Peter Adward">
                                    <img class="rounded-circle" src="../../assets/img/avatars/15.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Kaith D'souza" data-bs-original-title="Kaith D'souza">
                                    <img class="rounded-circle" src="../../assets/img/avatars/10.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="John Parker" data-bs-original-title="John Parker">
                                    <img class="rounded-circle" src="../../assets/img/avatars/11.png" alt="Avatar">
                                </li>
                            </ul>
                        </div>
                        <div class="d-flex justify-content-between align-items-end">
                            <div class="role-heading">
                                <h4 class="mb-1">Support</h4>
                                <a href="javascript:;" data-bs-toggle="modal" data-bs-target="#addRoleModal" class="role-edit-modal"><small>Edit Role</small></a>
                            </div>
                            <a href="javascript:void(0);" class="text-muted"><i class="bx bx-copy"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-2">
                            <h6 class="fw-normal">Total 2 users</h6>
                            <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Kim Merchent" data-bs-original-title="Kim Merchent">
                                    <img class="rounded-circle" src="../../assets/img/avatars/10.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Sam D'souza" data-bs-original-title="Sam D'souza">
                                    <img class="rounded-circle" src="../../assets/img/avatars/13.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Nurvi Karlos" data-bs-original-title="Nurvi Karlos">
                                    <img class="rounded-circle" src="../../assets/img/avatars/15.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Andrew Tye" data-bs-original-title="Andrew Tye">
                                    <img class="rounded-circle" src="../../assets/img/avatars/8.png" alt="Avatar">
                                </li>
                                <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-sm pull-up" aria-label="Rossie Kim" data-bs-original-title="Rossie Kim">
                                    <img class="rounded-circle" src="../../assets/img/avatars/9.png" alt="Avatar">
                                </li>
                            </ul>
                        </div>
                        <div class="d-flex justify-content-between align-items-end">
                            <div class="role-heading">
                                <h4 class="mb-1">Restricted User</h4>
                                <a href="javascript:;" data-bs-toggle="modal" data-bs-target="#addRoleModal" class="role-edit-modal"><small>Edit Role</small></a>
                            </div>
                            <a href="javascript:void(0);" class="text-muted"><i class="bx bx-copy"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="card h-100">
                    <div class="row h-100">
                        <div class="col-sm-5">
                            <div class="d-flex align-items-end h-100 justify-content-center mt-sm-0 mt-3">
                                <img src="../../assets/img/illustrations/sitting-girl-with-laptop-light.png" class="img-fluid" alt="Image" width="120" data-app-light-img="illustrations/sitting-girl-with-laptop-light.png" data-app-dark-img="illustrations/sitting-girl-with-laptop-dark.png">
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="card-body text-sm-end text-center ps-sm-0">
                                <button data-bs-target="#addRoleModal" data-bs-toggle="modal" class="btn btn-primary mb-3 text-nowrap add-new-role">Add New Role</button>
                                <p class="mb-0">Add role, if it does not exist</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <!-- Role Table -->
                <div class="card">
                    <div class="card-datatable table-responsive">
                        <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer"><div class="row mx-2"><div class="col-sm-12 col-md-4 col-lg-6"><div class="dataTables_length" id="DataTables_Table_0_length"><label><select name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" class="form-select"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select></label></div></div><div class="col-sm-12 col-md-8 col-lg-6"><div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-md-end justify-content-center align-items-center flex-sm-nowrap flex-wrap me-1"><div class="me-3"><div id="DataTables_Table_0_filter" class="dataTables_filter"><label>Search<input type="search" class="form-control" placeholder="Search.." aria-controls="DataTables_Table_0"></label></div></div><div class="user_role w-px-200 pb-3 pb-sm-0"><select id="UserRole" class="form-select text-capitalize"><option value=""> Select Role </option><option value="Admin" class="text-capitalize">Admin</option><option value="Author" class="text-capitalize">Author</option><option value="Editor" class="text-capitalize">Editor</option><option value="Maintainer" class="text-capitalize">Maintainer</option><option value="Subscriber" class="text-capitalize">Subscriber</option></select></div></div></div></div><table class="datatables-users table border-top dataTable no-footer dtr-column" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" style="width: 1031px;">
                            <thead>
                            <tr><th class="control sorting_disabled dtr-hidden" rowspan="1" colspan="1" style="width: 0px; display: none;" aria-label=""></th><th class="sorting sorting_desc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 275px;" aria-label="User: activate to sort column ascending" aria-sort="descending">User</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 126px;" aria-label="Role: activate to sort column ascending">Role</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 81px;" aria-label="Plan: activate to sort column ascending">Plan</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 160px;" aria-label="Billing: activate to sort column ascending">Billing</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 79px;" aria-label="Status: activate to sort column ascending">Status</th><th class="sorting_disabled" rowspan="1" colspan="1" style="width: 44px;" aria-label="View">View</th></tr>
                            </thead><tbody><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle"></div></div><div class="d-flex flex-column"><a href="app-user-view-account.html" class="text-body text-truncate"><span class="fw-medium">Zsazsa McCleverty</span></a><small class="text-muted">@zmcclevertye@soundcloud.com</small></div></div></td><td><span class="text-truncate d-flex align-items-center"><span class="badge badge-center rounded-pill bg-label-primary w-px-30 h-px-30 me-2"><i class="bx bx-pie-chart-alt bx-xs"></i></span>Maintainer</span></td><td><span class="fw-medium">Enterprise</span></td><td>Auto Debit</td><td><span class="badge bg-label-success">Active</span></td><td><a href="app-user-view-account.html" class="btn btn-sm btn-icon"><i class="bx bx-show-alt"></i></a></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/avatars/7.png" alt="Avatar" class="rounded-circle"></div></div><div class="d-flex flex-column"><a href="app-user-view-account.html" class="text-body text-truncate"><span class="fw-medium">Yoko Pottie</span></a><small class="text-muted">@ypottiec@privacy.gov.au</small></div></div></td><td><span class="text-truncate d-flex align-items-center"><span class="badge badge-center rounded-pill bg-label-warning w-px-30 h-px-30 me-2"><i class="bx bx-user bx-xs"></i></span>Subscriber</span></td><td><span class="fw-medium">Basic</span></td><td>Auto Debit</td><td><span class="badge bg-label-secondary">Inactive</span></td><td><a href="app-user-view-account.html" class="btn btn-sm btn-icon"><i class="bx bx-show-alt"></i></a></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle"></div></div><div class="d-flex flex-column"><a href="app-user-view-account.html" class="text-body text-truncate"><span class="fw-medium">Wesley Burland</span></a><small class="text-muted">@wburlandj@uiuc.edu</small></div></div></td><td><span class="text-truncate d-flex align-items-center"><span class="badge badge-center rounded-pill bg-label-info w-px-30 h-px-30 me-2"><i class="bx bx-edit bx-xs"></i></span>Editor</span></td><td><span class="fw-medium">Team</span></td><td>Auto Debit</td><td><span class="badge bg-label-secondary">Inactive</span></td><td><a href="app-user-view-account.html" class="btn btn-sm btn-icon"><i class="bx bx-show-alt"></i></a></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><span class="avatar-initial rounded-circle bg-label-secondary">VK</span></div></div><div class="d-flex flex-column"><a href="app-user-view-account.html" class="text-body text-truncate"><span class="fw-medium">Vladamir Koschek</span></a><small class="text-muted">@vkoschek17@abc.net.au</small></div></div></td><td><span class="text-truncate d-flex align-items-center"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30 me-2"><i class="bx bx-cog bx-xs"></i></span>Author</span></td><td><span class="fw-medium">Team</span></td><td>Manual - Paypal</td><td><span class="badge bg-label-success">Active</span></td><td><a href="app-user-view-account.html" class="btn btn-sm btn-icon"><i class="bx bx-show-alt"></i></a></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><span class="avatar-initial rounded-circle bg-label-primary">TW</span></div></div><div class="d-flex flex-column"><a href="app-user-view-account.html" class="text-body text-truncate"><span class="fw-medium">Tyne Widmore</span></a><small class="text-muted">@twidmore12@bravesites.com</small></div></div></td><td><span class="text-truncate d-flex align-items-center"><span class="badge badge-center rounded-pill bg-label-warning w-px-30 h-px-30 me-2"><i class="bx bx-user bx-xs"></i></span>Subscriber</span></td><td><span class="fw-medium">Team</span></td><td>Manual - Cash</td><td><span class="badge bg-label-warning">Pending</span></td><td><a href="app-user-view-account.html" class="btn btn-sm btn-icon"><i class="bx bx-show-alt"></i></a></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><span class="avatar-initial rounded-circle bg-label-dark">TB</span></div></div><div class="d-flex flex-column"><a href="app-user-view-account.html" class="text-body text-truncate"><span class="fw-medium">Travus Bruntjen</span></a><small class="text-muted">@tbruntjeni@sitemeter.com</small></div></div></td><td><span class="text-truncate d-flex align-items-center"><span class="badge badge-center rounded-pill bg-label-secondary w-px-30 h-px-30 me-2"><i class="bx bx-mobile-alt bx-xs"></i></span>Admin</span></td><td><span class="fw-medium">Enterprise</span></td><td>Manual - Cash</td><td><span class="badge bg-label-success">Active</span></td><td><a href="app-user-view-account.html" class="btn btn-sm btn-icon"><i class="bx bx-show-alt"></i></a></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/avatars/1.png" alt="Avatar" class="rounded-circle"></div></div><div class="d-flex flex-column"><a href="app-user-view-account.html" class="text-body text-truncate"><span class="fw-medium">Stu Delamaine</span></a><small class="text-muted">@sdelamainek@who.int</small></div></div></td><td><span class="text-truncate d-flex align-items-center"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30 me-2"><i class="bx bx-cog bx-xs"></i></span>Author</span></td><td><span class="fw-medium">Basic</span></td><td>Auto Debit</td><td><span class="badge bg-label-warning">Pending</span></td><td><a href="app-user-view-account.html" class="btn btn-sm btn-icon"><i class="bx bx-show-alt"></i></a></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><span class="avatar-initial rounded-circle bg-label-info">SO</span></div></div><div class="d-flex flex-column"><a href="app-user-view-account.html" class="text-body text-truncate"><span class="fw-medium">Saunder Offner</span></a><small class="text-muted">@soffner19@mac.com</small></div></div></td><td><span class="text-truncate d-flex align-items-center"><span class="badge badge-center rounded-pill bg-label-primary w-px-30 h-px-30 me-2"><i class="bx bx-pie-chart-alt bx-xs"></i></span>Maintainer</span></td><td><span class="fw-medium">Enterprise</span></td><td>Auto Debit</td><td><span class="badge bg-label-warning">Pending</span></td><td><a href="app-user-view-account.html" class="btn btn-sm btn-icon"><i class="bx bx-show-alt"></i></a></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><span class="avatar-initial rounded-circle bg-label-primary">SM</span></div></div><div class="d-flex flex-column"><a href="app-user-view-account.html" class="text-body text-truncate"><span class="fw-medium">Stephen MacGilfoyle</span></a><small class="text-muted">@smacgilfoyley@bigcartel.com</small></div></div></td><td><span class="text-truncate d-flex align-items-center"><span class="badge badge-center rounded-pill bg-label-primary w-px-30 h-px-30 me-2"><i class="bx bx-pie-chart-alt bx-xs"></i></span>Maintainer</span></td><td><span class="fw-medium">Company</span></td><td>Manual - Paypal</td><td><span class="badge bg-label-warning">Pending</span></td><td><a href="app-user-view-account.html" class="btn btn-sm btn-icon"><i class="bx bx-show-alt"></i></a></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><div class="d-flex justify-content-left align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-3"><img src="../../assets/img/avatars/9.png" alt="Avatar" class="rounded-circle"></div></div><div class="d-flex flex-column"><a href="app-user-view-account.html" class="text-body text-truncate"><span class="fw-medium">Skip Hebblethwaite</span></a><small class="text-muted">@shebblethwaite10@arizona.edu</small></div></div></td><td><span class="text-truncate d-flex align-items-center"><span class="badge badge-center rounded-pill bg-label-secondary w-px-30 h-px-30 me-2"><i class="bx bx-mobile-alt bx-xs"></i></span>Admin</span></td><td><span class="fw-medium">Company</span></td><td>Manual - Cash</td><td><span class="badge bg-label-secondary">Inactive</span></td><td><a href="app-user-view-account.html" class="btn btn-sm btn-icon"><i class="bx bx-show-alt"></i></a></td></tr></tbody>
                        </table><div class="row mx-2"><div class="col-sm-12 col-md-6"><div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div></div><div class="col-sm-12 col-md-6"><div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="DataTables_Table_0_previous"><a aria-controls="DataTables_Table_0" aria-disabled="true" role="link" data-dt-idx="previous" tabindex="-1" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="DataTables_Table_0" role="link" aria-current="page" data-dt-idx="0" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="1" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="2" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="3" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="4" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item next" id="DataTables_Table_0_next"><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="next" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
                    </div>
                </div>
                <!--/ Role Table -->
            </div>
        </div>
        <!--/ Role cards -->

        <!-- Add Role Modal -->
        <!-- Add Role Modal -->
        <div class="modal fade" id="addRoleModal" tabindex="-1" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-lg modal-simple modal-dialog-centered modal-add-new-role">
                <div class="modal-content p-3 p-md-5">
                    <div class="modal-body">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        <div class="text-center mb-4">
                            <h3 class="role-title">Add New Role</h3>
                            <p>Set role permissions</p>
                        </div>
                        <!-- Add role form -->
                        <form id="addRoleForm" class="row g-3 fv-plugins-bootstrap5 fv-plugins-framework" onsubmit="return false" novalidate="novalidate">
                            <div class="col-12 mb-4 fv-plugins-icon-container">
                                <label class="form-label" for="modalRoleName">Role Name</label>
                                <input type="text" id="modalRoleName" name="modalRoleName" class="form-control" placeholder="Enter a role name" tabindex="-1">
                                <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div></div>
                            <div class="col-12">
                                <h4>Role Permissions</h4>
                                <!-- Permission table -->
                                <div class="table-responsive">
                                    <table class="table table-flush-spacing">
                                        <tbody>
                                        <tr>
                                            <td class="text-nowrap fw-medium">Administrator Access <i class="bx bx-info-circle bx-xs" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Allows a full access to the system" data-bs-original-title="Allows a full access to the system"></i></td>
                                            <td>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="selectAll">
                                                    <label class="form-check-label" for="selectAll">
                                                        Select All
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-nowrap fw-medium">User Management</td>
                                            <td>
                                                <div class="d-flex">
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="userManagementRead">
                                                        <label class="form-check-label" for="userManagementRead">
                                                            Read
                                                        </label>
                                                    </div>
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="userManagementWrite">
                                                        <label class="form-check-label" for="userManagementWrite">
                                                            Write
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="userManagementCreate">
                                                        <label class="form-check-label" for="userManagementCreate">
                                                            Create
                                                        </label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-nowrap fw-medium">Content Management</td>
                                            <td>
                                                <div class="d-flex">
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="contentManagementRead">
                                                        <label class="form-check-label" for="contentManagementRead">
                                                            Read
                                                        </label>
                                                    </div>
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="contentManagementWrite">
                                                        <label class="form-check-label" for="contentManagementWrite">
                                                            Write
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="contentManagementCreate">
                                                        <label class="form-check-label" for="contentManagementCreate">
                                                            Create
                                                        </label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-nowrap fw-medium">Disputes Management</td>
                                            <td>
                                                <div class="d-flex">
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="dispManagementRead">
                                                        <label class="form-check-label" for="dispManagementRead">
                                                            Read
                                                        </label>
                                                    </div>
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="dispManagementWrite">
                                                        <label class="form-check-label" for="dispManagementWrite">
                                                            Write
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="dispManagementCreate">
                                                        <label class="form-check-label" for="dispManagementCreate">
                                                            Create
                                                        </label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-nowrap fw-medium">Database Management</td>
                                            <td>
                                                <div class="d-flex">
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="dbManagementRead">
                                                        <label class="form-check-label" for="dbManagementRead">
                                                            Read
                                                        </label>
                                                    </div>
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="dbManagementWrite">
                                                        <label class="form-check-label" for="dbManagementWrite">
                                                            Write
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="dbManagementCreate">
                                                        <label class="form-check-label" for="dbManagementCreate">
                                                            Create
                                                        </label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-nowrap fw-medium">Financial Management</td>
                                            <td>
                                                <div class="d-flex">
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="finManagementRead">
                                                        <label class="form-check-label" for="finManagementRead">
                                                            Read
                                                        </label>
                                                    </div>
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="finManagementWrite">
                                                        <label class="form-check-label" for="finManagementWrite">
                                                            Write
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="finManagementCreate">
                                                        <label class="form-check-label" for="finManagementCreate">
                                                            Create
                                                        </label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-nowrap fw-medium">Reporting</td>
                                            <td>
                                                <div class="d-flex">
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="reportingRead">
                                                        <label class="form-check-label" for="reportingRead">
                                                            Read
                                                        </label>
                                                    </div>
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="reportingWrite">
                                                        <label class="form-check-label" for="reportingWrite">
                                                            Write
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="reportingCreate">
                                                        <label class="form-check-label" for="reportingCreate">
                                                            Create
                                                        </label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-nowrap fw-medium">API Control</td>
                                            <td>
                                                <div class="d-flex">
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="apiRead">
                                                        <label class="form-check-label" for="apiRead">
                                                            Read
                                                        </label>
                                                    </div>
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="apiWrite">
                                                        <label class="form-check-label" for="apiWrite">
                                                            Write
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="apiCreate">
                                                        <label class="form-check-label" for="apiCreate">
                                                            Create
                                                        </label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-nowrap fw-medium">Repository Management</td>
                                            <td>
                                                <div class="d-flex">
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="repoRead">
                                                        <label class="form-check-label" for="repoRead">
                                                            Read
                                                        </label>
                                                    </div>
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="repoWrite">
                                                        <label class="form-check-label" for="repoWrite">
                                                            Write
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="repoCreate">
                                                        <label class="form-check-label" for="repoCreate">
                                                            Create
                                                        </label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-nowrap fw-medium">Payroll</td>
                                            <td>
                                                <div class="d-flex">
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="payrollRead">
                                                        <label class="form-check-label" for="payrollRead">
                                                            Read
                                                        </label>
                                                    </div>
                                                    <div class="form-check me-3 me-lg-5">
                                                        <input class="form-check-input" type="checkbox" id="payrollWrite">
                                                        <label class="form-check-label" for="payrollWrite">
                                                            Write
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="payrollCreate">
                                                        <label class="form-check-label" for="payrollCreate">
                                                            Create
                                                        </label>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- Permission table -->
                            </div>
                            <div class="col-12 text-center">
                                <button type="submit" class="btn btn-primary me-sm-3 me-1">Submit</button>
                                <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="modal" aria-label="Close">Cancel</button>
                            </div>
                            <input type="hidden"></form>
                        <!--/ Add role form -->
                    </div>
                </div>
            </div>
        </div>
        <!--/ Add Role Modal -->

        <!-- / Add Role Modal -->
    </div>
    <!-- / Content -->




    <!-- Footer -->
    <footer class="content-footer footer bg-footer-theme">
        <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
            <div class="mb-2 mb-md-0">
                © <script>
                document.write(new Date().getFullYear())

            </script>2024, made with ❤️ by <a href="https://themeselection.com" target="_blank" class="footer-link fw-medium">ThemeSelection</a>
            </div>
            <div class="d-none d-lg-inline-block">

                <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                <a href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/" target="_blank" class="footer-link me-4">Documentation</a>


                <a href="https://themeselection.com/support/" target="_blank" class="footer-link d-none d-sm-inline-block">Support</a>

            </div>
        </div>
    </footer>
    <!-- / Footer -->


    <div class="content-backdrop fade"></div>
</div>
<script src="${contextPath}/frontend/assets/js/app-access-roles.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-add-role.js"></script>
  
