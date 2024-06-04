<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/css/pages/app-invoice.css"/>
<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css">
<link rel="stylesheet"
      href="${contextPath}/frontend/assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css">
<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css">

<!-- Content wrapper -->
<div class="content-wrapper">

    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">


        <h4 class="py-3 mb-4">
            <span class="text-muted fw-light">Invoice /</span> List
        </h4>

        <!-- Invoice List Widget -->

        <div class="card mb-4">
            <div class="card-widget-separator-wrapper">
                <div class="card-body card-widget-separator">
                    <div class="row gy-4 gy-sm-1">
                        <div class="col-sm-6 col-lg-3">
                            <div class="d-flex justify-content-between align-items-start card-widget-1 border-end pb-3 pb-sm-0">
                                <div>
                                    <h3 class="mb-1">24</h3>
                                    <p class="mb-0">Clients</p>
                                </div>
                                <div class="avatar me-sm-4">
              <span class="avatar-initial rounded bg-label-secondary">
                <i class="bx bx-user bx-sm"></i>
              </span>
                                </div>
                            </div>
                            <hr class="d-none d-sm-block d-lg-none me-4">
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="d-flex justify-content-between align-items-start card-widget-2 border-end pb-3 pb-sm-0">
                                <div>
                                    <h3 class="mb-1">165</h3>
                                    <p class="mb-0">Invoices</p>
                                </div>
                                <div class="avatar me-lg-4">
              <span class="avatar-initial rounded bg-label-secondary">
                <i class="bx bx-file bx-sm"></i>
              </span>
                                </div>
                            </div>
                            <hr class="d-none d-sm-block d-lg-none">
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="d-flex justify-content-between align-items-start border-end pb-3 pb-sm-0 card-widget-3">
                                <div>
                                    <h3 class="mb-1">$2.46k</h3>
                                    <p class="mb-0">Paid</p>
                                </div>
                                <div class="avatar me-sm-4">
              <span class="avatar-initial rounded bg-label-secondary">
                <i class="bx bx-check-double bx-sm"></i>
              </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <h3 class="mb-1">$876</h3>
                                    <p class="mb-0">Unpaid</p>
                                </div>
                                <div class="avatar">
              <span class="avatar-initial rounded bg-label-secondary">
                <i class="bx bx-error-circle bx-sm"></i>
              </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Invoice List Table -->
        <div class="card">
            <div class="card-datatable table-responsive">
                <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer">
                    <div class="row mx-1">
                        <div class="col-12 col-md-6 d-flex align-items-center justify-content-center justify-content-md-start gap-3">
                            <div class="dataTables_length" id="DataTables_Table_0_length"><label><select
                                    name="DataTables_Table_0_length" aria-controls="DataTables_Table_0"
                                    class="form-select">
                                <option value="10">10</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                            </select></label></div>
                            <div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start mt-md-0 mt-3">
                                <div class="dt-buttons btn-group flex-wrap">
                                    <button class="btn btn-secondary btn-primary" tabindex="0"
                                            aria-controls="DataTables_Table_0" type="button"><span><i
                                            class="bx bx-plus me-md-1"></i><span class="d-md-inline-block d-none">Create Invoice</span></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 d-flex align-items-center justify-content-end flex-column flex-md-row pe-3 gap-md-3">
                            <div id="DataTables_Table_0_filter" class="dataTables_filter"><label><input type="search"
                                                                                                        class="form-control"
                                                                                                        placeholder="Search Invoice"
                                                                                                        aria-controls="DataTables_Table_0"></label>
                            </div>
                            <div class="invoice_status mb-3 mb-md-0"><select id="UserRole" class="form-select">
                                <option value=""> Select Status</option>
                                <option value="Downloaded" class="text-capitalize">Downloaded</option>
                                <option value="Draft" class="text-capitalize">Draft</option>
                                <option value="Paid" class="text-capitalize">Paid</option>
                                <option value="Partial Payment" class="text-capitalize">Partial Payment</option>
                                <option value="Past Due" class="text-capitalize">Past Due</option>
                                <option value="Sent" class="text-capitalize">Sent</option>
                            </select></div>
                        </div>
                    </div>
                    <table class="invoice-list-table table border-top dataTable no-footer dtr-column"
                           id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" style="width: 1031px;">
                        <thead>
                        <tr>
                            <th class="control sorting dtr-hidden" tabindex="0" aria-controls="DataTables_Table_0"
                                rowspan="1" colspan="1" style="width: 0px; display: none;"
                                aria-label=": activate to sort column ascending"></th>
                            <th class="sorting sorting_desc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1"
                                colspan="1" style="width: 63px;" aria-label="#ID: activate to sort column ascending"
                                aria-sort="descending">#ID
                            </th>
                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
                                style="width: 42px;" aria-label=": activate to sort column ascending"><i
                                    class="bx bx-trending-up"></i></th>
                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
                                style="width: 263px;" aria-label="Client: activate to sort column ascending">Client
                            </th>
                            <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
                                style="width: 66px;" aria-label="Total: activate to sort column ascending">Total
                            </th>
                            <th class="text-truncate sorting" tabindex="0" aria-controls="DataTables_Table_0"
                                rowspan="1" colspan="1" style="width: 123px;"
                                aria-label="Issued Date: activate to sort column ascending">Issued Date
                            </th>
                            <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 92px;"
                                aria-label="Balance">Balance
                            </th>
                            <th class="cell-fit sorting_disabled" rowspan="1" colspan="1" style="width: 76px;"
                                aria-label="Actions">Actions
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="odd">
                            <td class="  control" tabindex="0" style="display: none;"></td>
                            <td class="sorting_1"><a href="app-invoice-preview.html"><span
                                    class="fw-medium">#5089</span></a></td>
                            <td><span data-bs-toggle="tooltip" data-bs-html="true"
                                      aria-label="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 05/09/2020</span>"
                                      data-bs-original-title="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 05/09/2020</span>"><span
                                    class="badge badge-center rounded-pill bg-label-secondary w-px-30 h-px-30"><i
                                    class="bx bx-paper-plane bx-xs"></i></span></span></td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper">
                                        <div class="avatar avatar-sm me-2"><span
                                                class="avatar-initial rounded-circle bg-label-dark">JK</span></div>
                                    </div>
                                    <div class="d-flex flex-column"><a href="pages-profile-user.html"
                                                                       class="text-body text-truncate"><span
                                            class="fw-medium">Jamal Kerrod</span></a><small
                                            class="text-truncate text-muted">Software Development</small></div>
                                </div>
                            </td>
                            <td><span class="d-none">3077</span>$3077</td>
                            <td><span class="d-none">20200509</span>09 May 2020</td>
                            <td><span class="badge bg-label-success"> Paid </span></td>
                            <td>
                                <div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip"
                                                                          class="text-body" data-bs-placement="top"
                                                                          aria-label="Send Mail"
                                                                          data-bs-original-title="Send Mail"><i
                                        class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html"
                                                                           data-bs-toggle="tooltip" class="text-body"
                                                                           data-bs-placement="top"
                                                                           aria-label="Preview Invoice"
                                                                           data-bs-original-title="Preview Invoice"><i
                                        class="bx bx-show mx-1"></i></a>
                                    <div class="dropdown"><a href="javascript:;"
                                                             class="btn dropdown-toggle hide-arrow text-body p-0"
                                                             data-bs-toggle="dropdown"><i
                                            class="bx bx-dots-vertical-rounded"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end"><a href="javascript:;"
                                                                                        class="dropdown-item">Download</a><a
                                                href="app-invoice-edit.html" class="dropdown-item">Edit</a><a
                                                href="javascript:;" class="dropdown-item">Duplicate</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr class="even">
                            <td class="  control" tabindex="0" style="display: none;"></td>
                            <td class="sorting_1"><a href="app-invoice-preview.html"><span
                                    class="fw-medium">#5041</span></a></td>
                            <td><span data-bs-toggle="tooltip" data-bs-html="true"
                                      aria-label="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 11/19/2020</span>"
                                      data-bs-original-title="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 11/19/2020</span>"><span
                                    class="badge badge-center rounded-pill bg-label-secondary w-px-30 h-px-30"><i
                                    class="bx bx-paper-plane bx-xs"></i></span></span></td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper">
                                        <div class="avatar avatar-sm me-2"><img src="../../assets/img/avatars/2.png"
                                                                                alt="Avatar" class="rounded-circle">
                                        </div>
                                    </div>
                                    <div class="d-flex flex-column"><a href="pages-profile-user.html"
                                                                       class="text-body text-truncate"><span
                                            class="fw-medium">Shamus Tuttle</span></a><small
                                            class="text-truncate text-muted">Software Development</small></div>
                                </div>
                            </td>
                            <td><span class="d-none">2230</span>$2230</td>
                            <td><span class="d-none">20201119</span>19 Nov 2020</td>
                            <td><span class="badge bg-label-success"> Paid </span></td>
                            <td>
                                <div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip"
                                                                          class="text-body" data-bs-placement="top"
                                                                          aria-label="Send Mail"
                                                                          data-bs-original-title="Send Mail"><i
                                        class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html"
                                                                           data-bs-toggle="tooltip" class="text-body"
                                                                           data-bs-placement="top"
                                                                           aria-label="Preview Invoice"
                                                                           data-bs-original-title="Preview Invoice"><i
                                        class="bx bx-show mx-1"></i></a>
                                    <div class="dropdown"><a href="javascript:;"
                                                             class="btn dropdown-toggle hide-arrow text-body p-0"
                                                             data-bs-toggle="dropdown"><i
                                            class="bx bx-dots-vertical-rounded"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end"><a href="javascript:;"
                                                                                        class="dropdown-item">Download</a><a
                                                href="app-invoice-edit.html" class="dropdown-item">Edit</a><a
                                                href="javascript:;" class="dropdown-item">Duplicate</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr class="odd">
                            <td class="  control" tabindex="0" style="display: none;"></td>
                            <td class="sorting_1"><a href="app-invoice-preview.html"><span
                                    class="fw-medium">#5027</span></a></td>
                            <td><span data-bs-toggle="tooltip" data-bs-html="true"
                                      aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/25/2020</span>"
                                      data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/25/2020</span>"><span
                                    class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i
                                    class="bx bx-adjust bx-xs"></i></span></span></td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper">
                                        <div class="avatar avatar-sm me-2"><img src="../../assets/img/avatars/2.png"
                                                                                alt="Avatar" class="rounded-circle">
                                        </div>
                                    </div>
                                    <div class="d-flex flex-column"><a href="pages-profile-user.html"
                                                                       class="text-body text-truncate"><span
                                            class="fw-medium">Devonne Wallbridge</span></a><small
                                            class="text-truncate text-muted">Software Development</small></div>
                                </div>
                            </td>
                            <td><span class="d-none">2787</span>$2787</td>
                            <td><span class="d-none">20200925</span>25 Sep 2020</td>
                            <td><span class="badge bg-label-success"> Paid </span></td>
                            <td>
                                <div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip"
                                                                          class="text-body" data-bs-placement="top"
                                                                          aria-label="Send Mail"
                                                                          data-bs-original-title="Send Mail"><i
                                        class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html"
                                                                           data-bs-toggle="tooltip" class="text-body"
                                                                           data-bs-placement="top"
                                                                           aria-label="Preview Invoice"
                                                                           data-bs-original-title="Preview Invoice"><i
                                        class="bx bx-show mx-1"></i></a>
                                    <div class="dropdown"><a href="javascript:;"
                                                             class="btn dropdown-toggle hide-arrow text-body p-0"
                                                             data-bs-toggle="dropdown"><i
                                            class="bx bx-dots-vertical-rounded"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end"><a href="javascript:;"
                                                                                        class="dropdown-item">Download</a><a
                                                href="app-invoice-edit.html" class="dropdown-item">Edit</a><a
                                                href="javascript:;" class="dropdown-item">Duplicate</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr class="even">
                            <td class="  control" tabindex="0" style="display: none;"></td>
                            <td class="sorting_1"><a href="app-invoice-preview.html"><span
                                    class="fw-medium">#5024</span></a></td>
                            <td><span data-bs-toggle="tooltip" data-bs-html="true"
                                      aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> -$202<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/02/2020</span>"
                                      data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> -$202<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/02/2020</span>"><span
                                    class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i
                                    class="bx bx-adjust bx-xs"></i></span></span></td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper">
                                        <div class="avatar avatar-sm me-2"><img src="../../assets/img/avatars/8.png"
                                                                                alt="Avatar" class="rounded-circle">
                                        </div>
                                    </div>
                                    <div class="d-flex flex-column"><a href="pages-profile-user.html"
                                                                       class="text-body text-truncate"><span
                                            class="fw-medium">Ariella Filippyev</span></a><small
                                            class="text-truncate text-muted">Unlimited Extended License</small></div>
                                </div>
                            </td>
                            <td><span class="d-none">5285</span>$5285</td>
                            <td><span class="d-none">20200802</span>02 Aug 2020</td>
                            <td><span class="d-none">-$202</span>-$202</td>
                            <td>
                                <div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip"
                                                                          class="text-body" data-bs-placement="top"
                                                                          aria-label="Send Mail"
                                                                          data-bs-original-title="Send Mail"><i
                                        class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html"
                                                                           data-bs-toggle="tooltip" class="text-body"
                                                                           data-bs-placement="top"
                                                                           aria-label="Preview Invoice"
                                                                           data-bs-original-title="Preview Invoice"><i
                                        class="bx bx-show mx-1"></i></a>
                                    <div class="dropdown"><a href="javascript:;"
                                                             class="btn dropdown-toggle hide-arrow text-body p-0"
                                                             data-bs-toggle="dropdown"><i
                                            class="bx bx-dots-vertical-rounded"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end"><a href="javascript:;"
                                                                                        class="dropdown-item">Download</a><a
                                                href="app-invoice-edit.html" class="dropdown-item">Edit</a><a
                                                href="javascript:;" class="dropdown-item">Duplicate</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr class="odd">
                            <td class="  control" tabindex="0" style="display: none;"></td>
                            <td class="sorting_1"><a href="app-invoice-preview.html"><span
                                    class="fw-medium">#5020</span></a></td>
                            <td><span data-bs-toggle="tooltip" data-bs-html="true"
                                      aria-label="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 12/15/2020</span>"
                                      data-bs-original-title="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 12/15/2020</span>"><span
                                    class="badge badge-center rounded-pill bg-label-info w-px-30 h-px-30"><i
                                    class="bx bx-down-arrow-circle bx-xs"></i></span></span></td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper">
                                        <div class="avatar avatar-sm me-2"><img src="../../assets/img/avatars/8.png"
                                                                                alt="Avatar" class="rounded-circle">
                                        </div>
                                    </div>
                                    <div class="d-flex flex-column"><a href="pages-profile-user.html"
                                                                       class="text-body text-truncate"><span
                                            class="fw-medium">Roy Southerell</span></a><small
                                            class="text-truncate text-muted">UI/UX Design &amp; Development</small>
                                    </div>
                                </div>
                            </td>
                            <td><span class="d-none">5219</span>$5219</td>
                            <td><span class="d-none">20201215</span>15 Dec 2020</td>
                            <td><span class="badge bg-label-success"> Paid </span></td>
                            <td>
                                <div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip"
                                                                          class="text-body" data-bs-placement="top"
                                                                          aria-label="Send Mail"
                                                                          data-bs-original-title="Send Mail"><i
                                        class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html"
                                                                           data-bs-toggle="tooltip" class="text-body"
                                                                           data-bs-placement="top"
                                                                           aria-label="Preview Invoice"
                                                                           data-bs-original-title="Preview Invoice"><i
                                        class="bx bx-show mx-1"></i></a>
                                    <div class="dropdown"><a href="javascript:;"
                                                             class="btn dropdown-toggle hide-arrow text-body p-0"
                                                             data-bs-toggle="dropdown"><i
                                            class="bx bx-dots-vertical-rounded"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end"><a href="javascript:;"
                                                                                        class="dropdown-item">Download</a><a
                                                href="app-invoice-edit.html" class="dropdown-item">Edit</a><a
                                                href="javascript:;" class="dropdown-item">Duplicate</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr class="even">
                            <td class="  control" tabindex="0" style="display: none;"></td>
                            <td class="sorting_1"><a href="app-invoice-preview.html"><span
                                    class="fw-medium">#4995</span></a></td>
                            <td><span data-bs-toggle="tooltip" data-bs-html="true"
                                      aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 06/09/2020</span>"
                                      data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 06/09/2020</span>"><span
                                    class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i
                                    class="bx bx-adjust bx-xs"></i></span></span></td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper">
                                        <div class="avatar avatar-sm me-2"><img src="../../assets/img/avatars/11.png"
                                                                                alt="Avatar" class="rounded-circle">
                                        </div>
                                    </div>
                                    <div class="d-flex flex-column"><a href="pages-profile-user.html"
                                                                       class="text-body text-truncate"><span
                                            class="fw-medium">Raynell Clendennen</span></a><small
                                            class="text-truncate text-muted">Template Customization</small></div>
                                </div>
                            </td>
                            <td><span class="d-none">3313</span>$3313</td>
                            <td><span class="d-none">20200609</span>09 Jun 2020</td>
                            <td><span class="badge bg-label-success"> Paid </span></td>
                            <td>
                                <div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip"
                                                                          class="text-body" data-bs-placement="top"
                                                                          aria-label="Send Mail"
                                                                          data-bs-original-title="Send Mail"><i
                                        class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html"
                                                                           data-bs-toggle="tooltip" class="text-body"
                                                                           data-bs-placement="top"
                                                                           aria-label="Preview Invoice"
                                                                           data-bs-original-title="Preview Invoice"><i
                                        class="bx bx-show mx-1"></i></a>
                                    <div class="dropdown"><a href="javascript:;"
                                                             class="btn dropdown-toggle hide-arrow text-body p-0"
                                                             data-bs-toggle="dropdown"><i
                                            class="bx bx-dots-vertical-rounded"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end"><a href="javascript:;"
                                                                                        class="dropdown-item">Download</a><a
                                                href="app-invoice-edit.html" class="dropdown-item">Edit</a><a
                                                href="javascript:;" class="dropdown-item">Duplicate</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr class="odd">
                            <td class="  control" tabindex="0" style="display: none;"></td>
                            <td class="sorting_1"><a href="app-invoice-preview.html"><span
                                    class="fw-medium">#4993</span></a></td>
                            <td><span data-bs-toggle="tooltip" data-bs-html="true"
                                      aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 10/22/2020</span>"
                                      data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 10/22/2020</span>"><span
                                    class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i
                                    class="bx bx-adjust bx-xs"></i></span></span></td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper">
                                        <div class="avatar avatar-sm me-2"><span
                                                class="avatar-initial rounded-circle bg-label-warning">LA</span></div>
                                    </div>
                                    <div class="d-flex flex-column"><a href="pages-profile-user.html"
                                                                       class="text-body text-truncate"><span
                                            class="fw-medium">Lutero Aloshechkin</span></a><small
                                            class="text-truncate text-muted">Unlimited Extended License</small></div>
                                </div>
                            </td>
                            <td><span class="d-none">4836</span>$4836</td>
                            <td><span class="d-none">20201022</span>22 Oct 2020</td>
                            <td><span class="badge bg-label-success"> Paid </span></td>
                            <td>
                                <div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip"
                                                                          class="text-body" data-bs-placement="top"
                                                                          aria-label="Send Mail"
                                                                          data-bs-original-title="Send Mail"><i
                                        class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html"
                                                                           data-bs-toggle="tooltip" class="text-body"
                                                                           data-bs-placement="top"
                                                                           aria-label="Preview Invoice"
                                                                           data-bs-original-title="Preview Invoice"><i
                                        class="bx bx-show mx-1"></i></a>
                                    <div class="dropdown"><a href="javascript:;"
                                                             class="btn dropdown-toggle hide-arrow text-body p-0"
                                                             data-bs-toggle="dropdown"><i
                                            class="bx bx-dots-vertical-rounded"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end"><a href="javascript:;"
                                                                                        class="dropdown-item">Download</a><a
                                                href="app-invoice-edit.html" class="dropdown-item">Edit</a><a
                                                href="javascript:;" class="dropdown-item">Duplicate</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr class="even">
                            <td class="  control" tabindex="0" style="display: none;"></td>
                            <td class="sorting_1"><a href="app-invoice-preview.html"><span
                                    class="fw-medium">#4989</span></a></td>
                            <td><span data-bs-toggle="tooltip" data-bs-html="true"
                                      aria-label="<span>Past Due<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/01/2020</span>"
                                      data-bs-original-title="<span>Past Due<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/01/2020</span>"><span
                                    class="badge badge-center rounded-pill bg-label-danger w-px-30 h-px-30"><i
                                    class="bx bx-info-circle bx-xs"></i></span></span></td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper">
                                        <div class="avatar avatar-sm me-2"><span
                                                class="avatar-initial rounded-circle bg-label-info">OG</span></div>
                                    </div>
                                    <div class="d-flex flex-column"><a href="pages-profile-user.html"
                                                                       class="text-body text-truncate"><span
                                            class="fw-medium">Orson Grafton</span></a><small
                                            class="text-truncate text-muted">Unlimited Extended License</small></div>
                                </div>
                            </td>
                            <td><span class="d-none">5293</span>$5293</td>
                            <td><span class="d-none">20200801</span>01 Aug 2020</td>
                            <td><span class="badge bg-label-success"> Paid </span></td>
                            <td>
                                <div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip"
                                                                          class="text-body" data-bs-placement="top"
                                                                          aria-label="Send Mail"
                                                                          data-bs-original-title="Send Mail"><i
                                        class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html"
                                                                           data-bs-toggle="tooltip" class="text-body"
                                                                           data-bs-placement="top"
                                                                           aria-label="Preview Invoice"
                                                                           data-bs-original-title="Preview Invoice"><i
                                        class="bx bx-show mx-1"></i></a>
                                    <div class="dropdown"><a href="javascript:;"
                                                             class="btn dropdown-toggle hide-arrow text-body p-0"
                                                             data-bs-toggle="dropdown"><i
                                            class="bx bx-dots-vertical-rounded"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end"><a href="javascript:;"
                                                                                        class="dropdown-item">Download</a><a
                                                href="app-invoice-edit.html" class="dropdown-item">Edit</a><a
                                                href="javascript:;" class="dropdown-item">Duplicate</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr class="odd">
                            <td class="  control" tabindex="0" style="display: none;"></td>
                            <td class="sorting_1"><a href="app-invoice-preview.html"><span
                                    class="fw-medium">#4989</span></a></td>
                            <td><span data-bs-toggle="tooltip" data-bs-html="true"
                                      aria-label="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/23/2020</span>"
                                      data-bs-original-title="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/23/2020</span>"><span
                                    class="badge badge-center rounded-pill bg-label-info w-px-30 h-px-30"><i
                                    class="bx bx-down-arrow-circle bx-xs"></i></span></span></td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper">
                                        <div class="avatar avatar-sm me-2"><span
                                                class="avatar-initial rounded-circle bg-label-info">LH</span></div>
                                    </div>
                                    <div class="d-flex flex-column"><a href="pages-profile-user.html"
                                                                       class="text-body text-truncate"><span
                                            class="fw-medium">Lorine Hischke</span></a><small
                                            class="text-truncate text-muted">Unlimited Extended License</small></div>
                                </div>
                            </td>
                            <td><span class="d-none">3623</span>$3623</td>
                            <td><span class="d-none">20200923</span>23 Sep 2020</td>
                            <td><span class="badge bg-label-success"> Paid </span></td>
                            <td>
                                <div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip"
                                                                          class="text-body" data-bs-placement="top"
                                                                          aria-label="Send Mail"
                                                                          data-bs-original-title="Send Mail"><i
                                        class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html"
                                                                           data-bs-toggle="tooltip" class="text-body"
                                                                           data-bs-placement="top"
                                                                           aria-label="Preview Invoice"
                                                                           data-bs-original-title="Preview Invoice"><i
                                        class="bx bx-show mx-1"></i></a>
                                    <div class="dropdown"><a href="javascript:;"
                                                             class="btn dropdown-toggle hide-arrow text-body p-0"
                                                             data-bs-toggle="dropdown"><i
                                            class="bx bx-dots-vertical-rounded"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end"><a href="javascript:;"
                                                                                        class="dropdown-item">Download</a><a
                                                href="app-invoice-edit.html" class="dropdown-item">Edit</a><a
                                                href="javascript:;" class="dropdown-item">Duplicate</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr class="even">
                            <td class="  control" tabindex="0" style="display: none;"></td>
                            <td class="sorting_1"><a href="app-invoice-preview.html"><span
                                    class="fw-medium">#4965</span></a></td>
                            <td><span data-bs-toggle="tooltip" data-bs-html="true"
                                      aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> $666<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 03/18/2021</span>"
                                      data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> $666<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 03/18/2021</span>"><span
                                    class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i
                                    class="bx bx-adjust bx-xs"></i></span></span></td>
                            <td>
                                <div class="d-flex justify-content-start align-items-center">
                                    <div class="avatar-wrapper">
                                        <div class="avatar avatar-sm me-2"><img src="../../assets/img/avatars/11.png"
                                                                                alt="Avatar" class="rounded-circle">
                                        </div>
                                    </div>
                                    <div class="d-flex flex-column"><a href="pages-profile-user.html"
                                                                       class="text-body text-truncate"><span
                                            class="fw-medium">Yelena O'Hear</span></a><small
                                            class="text-truncate text-muted">Unlimited Extended License</small></div>
                                </div>
                            </td>
                            <td><span class="d-none">3789</span>$3789</td>
                            <td><span class="d-none">20210318</span>18 Mar 2021</td>
                            <td><span class="d-none">$666</span>$666</td>
                            <td>
                                <div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip"
                                                                          class="text-body" data-bs-placement="top"
                                                                          aria-label="Send Mail"
                                                                          data-bs-original-title="Send Mail"><i
                                        class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html"
                                                                           data-bs-toggle="tooltip" class="text-body"
                                                                           data-bs-placement="top"
                                                                           aria-label="Preview Invoice"
                                                                           data-bs-original-title="Preview Invoice"><i
                                        class="bx bx-show mx-1"></i></a>
                                    <div class="dropdown"><a href="javascript:;"
                                                             class="btn dropdown-toggle hide-arrow text-body p-0"
                                                             data-bs-toggle="dropdown"><i
                                            class="bx bx-dots-vertical-rounded"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end"><a href="javascript:;"
                                                                                        class="dropdown-item">Download</a><a
                                                href="app-invoice-edit.html" class="dropdown-item">Edit</a><a
                                                href="javascript:;" class="dropdown-item">Duplicate</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="row mx-2">
                        <div class="col-sm-12 col-md-6">
                            <div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">
                                Showing 1 to 10 of 50 entries
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
                                                                              role="link" data-dt-idx="1" tabindex="0"
                                                                              class="page-link">2</a></li>
                                    <li class="paginate_button page-item "><a href="#"
                                                                              aria-controls="DataTables_Table_0"
                                                                              role="link" data-dt-idx="2" tabindex="0"
                                                                              class="page-link">3</a></li>
                                    <li class="paginate_button page-item "><a href="#"
                                                                              aria-controls="DataTables_Table_0"
                                                                              role="link" data-dt-idx="3" tabindex="0"
                                                                              class="page-link">4</a></li>
                                    <li class="paginate_button page-item "><a href="#"
                                                                              aria-controls="DataTables_Table_0"
                                                                              role="link" data-dt-idx="4" tabindex="0"
                                                                              class="page-link">5</a></li>
                                    <li class="paginate_button page-item next" id="DataTables_Table_0_next"><a href="#"
                                                                                                               aria-controls="DataTables_Table_0"
                                                                                                               role="link"
                                                                                                               data-dt-idx="next"
                                                                                                               tabindex="0"
                                                                                                               class="page-link">Next</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--        <div class="card">--%>
        <%--            <div class="card-datatable table-responsive">--%>
        <%--                <table class="invoice-list-table table border-top">--%>
        <%--                    <thead>--%>
        <%--                    <tr>--%>
        <%--                        <th></th>--%>
        <%--                        <th>#ID</th>--%>
        <%--                        <th><i class='bx bx-trending-up'></i></th>--%>
        <%--                        <th>Client</th>--%>
        <%--                        <th>Total</th>--%>
        <%--                        <th class="text-truncate">Issued Date</th>--%>
        <%--                        <th>Balance</th>--%>
        <%--                        <th>Invoice Status</th>--%>
        <%--                        <th class="cell-fit">Actions</th>--%>
        <%--                    </tr>--%>
        <%--                    </thead>--%>
        <%--                </table>--%>
        <%--            </div>--%>
        <%--        </div>--%>


    </div>

    <!-- Vendors JS -->
    <script src="${contextPath}/frontend/assets/vendor/libs/moment/moment.js"></script>
    <script src="${contextPath}/frontend/assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>

    <!-- Main JS -->
    <script src="${contextPath}/frontend/assets/js/main.js"></script>


    <!-- Page JS -->
    <script src="${contextPath}/frontend/assets/js/app-invoice-list.js"></script>