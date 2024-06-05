<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/css/pages/page-user-view.css" />

<div class="content-wrapper">

    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">


        <h4 class="py-3 mb-4">
            <span class="text-muted fw-light">Account Settings /</span> Billings &amp; Plans
        </h4>

        <div class="row">
            <div class="col-md-12">
                <ul class="nav nav-pills flex-column flex-md-row mb-3">
                    <li class="nav-item"><a class="nav-link" href="pages-account-settings-account.html"><i class="bx bx-user me-1"></i> Account</a></li>
                    <li class="nav-item"><a class="nav-link" href="pages-account-settings-security.html"><i class="bx bx-lock-alt me-1"></i> Security</a></li>
                    <li class="nav-item"><a class="nav-link active" href="javascript:void(0);"><i class="bx bx-detail me-1"></i> Billing &amp; Plans</a></li>
                    <li class="nav-item"><a class="nav-link" href="pages-account-settings-notifications.html"><i class="bx bx-bell me-1"></i> Notifications</a></li>
                    <li class="nav-item"><a class="nav-link" href="pages-account-settings-connections.html"><i class="bx bx-link-alt me-1"></i> Connections</a></li>
                </ul>
                <div class="card mb-4">
                    <!-- Current Plan -->
                    <h5 class="card-header">Current Plan</h5>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 mb-1">
                                <div class="mb-4">
                                    <h6 class="mb-2">Your Current Plan is Basic</h6>
                                    <p>A simple start for everyone</p>
                                </div>
                                <div class="mb-4">
                                    <h6 class="mb-2">Active until Dec 09, 2021</h6>
                                    <p>We will send you a notification upon Subscription expiration</p>
                                </div>
                                <div class="mb-4">
                                    <h6 class="mb-2"><span class="me-2">$199 Per Month</span> <span class="badge bg-label-primary">Popular</span></h6>
                                    <p>Standard plan for small to medium businesses</p>
                                </div>
                            </div>
                            <div class="col-md-6 mb-1">
                                <div class="alert alert-warning mb-4" role="alert">
                                    <h6 class="alert-heading mb-1">We need your attention!</h6>
                                    <span>Your plan requires update</span>
                                </div>
                                <div class="plan-statistics">
                                    <div class="d-flex justify-content-between">
                                        <span class="fw-medium mb-2">Days</span>
                                        <span class="fw-medium mb-2">24 of 30 Days</span>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar w-75" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <p class="mt-1 mb-0">6 days remaining until your plan requires update</p>
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-primary me-2 mt-2" data-bs-toggle="modal" data-bs-target="#pricingModal">Upgrade Plan</button>
                                <button class="btn btn-label-secondary cancel-subscription mt-2">Cancel Subscription</button>
                            </div>
                        </div>
                    </div>
                    <!-- /Current Plan -->
                </div>
                <div class="card mb-4">
                    <h5 class="card-header">Payment Methods</h5>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <form id="creditCardForm" class="row g-3 fv-plugins-bootstrap5 fv-plugins-framework fv-plugins-icon-container" onsubmit="return false" novalidate="novalidate">
                                    <div class="col-12">
                                        <div class="form-check form-check-inline">
                                            <input name="collapsible-payment" class="form-check-input" type="radio" value="" id="collapsible-payment-cc" checked="">
                                            <label class="form-check-label" for="collapsible-payment-cc">Credit/Debit/ATM Card</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input name="collapsible-payment" class="form-check-input" type="radio" value="" id="collapsible-payment-cash">
                                            <label class="form-check-label" for="collapsible-payment-cash">Paypal account</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label w-100" for="paymentCard">Card Number</label>
                                        <div class="input-group input-group-merge has-validation">
                                            <input id="paymentCard" name="paymentCard" class="form-control credit-card-mask" type="text" placeholder="1356 3215 6548 7898" aria-describedby="paymentCard2">
                                            <span class="input-group-text cursor-pointer p-1" id="paymentCard2"><span class="card-type"></span></span>
                                        </div><div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="paymentName">Name</label>
                                        <input type="text" id="paymentName" class="form-control" placeholder="John Doe">
                                    </div>
                                    <div class="col-6 col-md-3">
                                        <label class="form-label" for="paymentExpiryDate">Exp. Date</label>
                                        <input type="text" id="paymentExpiryDate" class="form-control expiry-date-mask" placeholder="MM/YY">
                                    </div>
                                    <div class="col-6 col-md-3">
                                        <label class="form-label" for="paymentCvv">CVV Code</label>
                                        <div class="input-group input-group-merge">
                                            <input type="text" id="paymentCvv" class="form-control cvv-code-mask" maxlength="3" placeholder="654">
                                            <span class="input-group-text cursor-pointer" id="paymentCvv2"><i class="bx bx-help-circle text-muted" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Card Verification Value" data-bs-original-title="Card Verification Value"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <label class="switch">
                                            <input type="checkbox" class="switch-input">
                                            <span class="switch-toggle-slider">
                    <span class="switch-on"></span>
                    <span class="switch-off"></span>
                  </span>
                                            <span class="switch-label">Save card for future billing?</span>
                                        </label>
                                    </div>
                                    <div class="col-12 mt-3">
                                        <button type="submit" class="btn btn-primary me-sm-3 me-1">Save Changes</button>
                                        <button type="reset" class="btn btn-label-secondary">Cancel</button>
                                    </div>
                                    <input type="hidden"></form>
                            </div>
                            <div class="col-md-6 mt-5 mt-md-0">
                                <h6>My Cards</h6>
                                <div class="added-cards">
                                    <div class="cardMaster bg-lighter rounded-2 p-3 mb-3">
                                        <div class="d-flex justify-content-between flex-sm-row flex-column">
                                            <div class="card-information me-2">
                                                <img class="mb-3 img-fluid" src="${contextPath}/frontend/assets/img/icons/payments/mastercard.png" alt="Master Card">
                                                <div class="d-flex align-items-center mb-1 flex-wrap gap-2">
                                                    <h6 class="mb-0 me-2">Tom McBride</h6>
                                                    <span class="badge bg-label-primary">Primary</span>
                                                </div>
                                                <span class="card-number">∗∗∗∗ ∗∗∗∗ 9856</span>
                                            </div>
                                            <div class="d-flex flex-column text-start text-sm-end">
                                                <div class="d-flex order-sm-0 order-1 mt-sm-0 mt-3">
                                                    <button class="btn btn-label-primary me-2" data-bs-toggle="modal" data-bs-target="#editCCModal">Edit</button>
                                                    <button class="btn btn-label-secondary">Delete</button>
                                                </div>
                                                <small class="mt-sm-auto mt-2 order-sm-1 order-0">Card expires at 12/26</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cardMaster bg-lighter rounded-2 p-3">
                                        <div class="d-flex justify-content-between flex-sm-row flex-column">
                                            <div class="card-information me-2">
                                                <img class="mb-3 img-fluid" src="${contextPath}/frontend/assets/img/icons/payments/visa.png" alt="Visa Card">
                                                <h6 class="mb-1">Mildred Wagner</h6>
                                                <span class="card-number">∗∗∗∗ ∗∗∗∗ 5896</span>
                                            </div>
                                            <div class="d-flex flex-column text-start text-sm-end">
                                                <div class="d-flex order-sm-0 order-1 mt-sm-0 mt-3">
                                                    <button class="btn btn-label-primary me-2" data-bs-toggle="modal" data-bs-target="#editCCModal">Edit</button>
                                                    <button class="btn btn-label-secondary">Delete</button>
                                                </div>
                                                <small class="mt-sm-auto mt-2 order-sm-1 order-0">Card expires at 10/27</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Modal -->
                                <!-- Add New Credit Card Modal -->
                                <div class="modal fade" id="editCCModal" tabindex="-1" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered modal-simple modal-add-new-cc">
                                        <div class="modal-content p-3 p-md-5">
                                            <div class="modal-body">
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                <div class="text-center mb-4">
                                                    <h3>Edit Card</h3>
                                                    <p>Edit your saved card details</p>
                                                </div>
                                                <form id="editCCForm" class="row g-3 fv-plugins-bootstrap5 fv-plugins-framework" onsubmit="return false" novalidate="novalidate">
                                                    <div class="col-12 fv-plugins-icon-container">
                                                        <label class="form-label w-100" for="modalEditCard">Card Number</label>
                                                        <div class="input-group input-group-merge has-validation">
                                                            <input id="modalEditCard" name="modalEditCard" class="form-control credit-card-mask-edit" type="text" placeholder="4356 3215 6548 7898" value="4356 3215 6548 7898" aria-describedby="modalEditCard2">
                                                            <span class="input-group-text cursor-pointer p-1" id="modalEditCard2"><span class="card-type-edit"><img src="${contextPath}/frontend/assets/img/icons/payments/visa-cc.png" height="28"></span></span>
                                                        </div><div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>
                                                    </div>
                                                    <div class="col-12 col-md-6">
                                                        <label class="form-label" for="modalEditName">Name</label>
                                                        <input type="text" id="modalEditName" class="form-control" placeholder="John Doe" value="John Doe">
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <label class="form-label" for="modalEditExpiryDate">Exp. Date</label>
                                                        <input type="text" id="modalEditExpiryDate" class="form-control expiry-date-mask-edit" placeholder="MM/YY" value="08/28">
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <label class="form-label" for="modalEditCvv">CVV Code</label>
                                                        <div class="input-group input-group-merge">
                                                            <input type="text" id="modalEditCvv" class="form-control cvv-code-mask-edit" maxlength="3" placeholder="654" value="XXX">
                                                            <span class="input-group-text cursor-pointer" id="modalEditCvv2"><i class="bx bx-help-circle text-muted" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Card Verification Value" data-bs-original-title="Card Verification Value"></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <label class="switch">
                                                            <input type="checkbox" class="switch-input">
                                                            <span class="switch-toggle-slider">
                <span class="switch-on"></span>
                <span class="switch-off"></span>
              </span>
                                                            <span class="switch-label">Set as primary card</span>
                                                        </label>
                                                    </div>
                                                    <div class="col-12 text-center">
                                                        <button type="submit" class="btn btn-primary me-sm-3 me-1 mt-3">Submit</button>
                                                        <button type="reset" class="btn btn-label-secondary mt-3" data-bs-dismiss="modal" aria-label="Close">Cancel</button>
                                                    </div>
                                                    <input type="hidden"></form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ Add New Credit Card Modal -->

                                <!--/ Modal -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card mb-4">
                    <!-- Billing Address -->
                    <h5 class="card-header">Billing Address</h5>
                    <div class="card-body">
                        <form id="formAccountSettings" onsubmit="return false" class="fv-plugins-bootstrap5 fv-plugins-framework" novalidate="novalidate">
                            <div class="row">
                                <div class="mb-3 col-sm-6 fv-plugins-icon-container">
                                    <label for="companyName" class="form-label">Company Name</label>
                                    <input type="text" id="companyName" name="companyName" class="form-control" placeholder="ThemeSelection">
                                    <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div></div>
                                <div class="mb-3 col-sm-6 fv-plugins-icon-container">
                                    <label for="billingEmail" class="form-label">Billing Email</label>
                                    <input class="form-control" type="text" id="billingEmail" name="billingEmail" placeholder="john.doe@example.com">
                                    <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div></div>
                                <div class="mb-3 col-sm-6">
                                    <label for="taxId" class="form-label">Tax ID</label>
                                    <input type="text" id="taxId" name="taxId" class="form-control" placeholder="Enter Tax ID">
                                </div>
                                <div class="mb-3 col-sm-6">
                                    <label for="vatNumber" class="form-label">VAT Number</label>
                                    <input class="form-control" type="text" id="vatNumber" name="vatNumber" placeholder="Enter VAT Number">
                                </div>
                                <div class="mb-3 col-sm-6">
                                    <label for="mobileNumber" class="form-label">Mobile</label>
                                    <div class="input-group input-group-merge">
                                        <span class="input-group-text">US (+1)</span>
                                        <input class="form-control mobile-number" type="text" id="mobileNumber" name="mobileNumber" placeholder="202 555 0111">
                                    </div>
                                </div>
                                <div class="mb-3 col-sm-6">
                                    <label for="country" class="form-label">Country</label>
                                    <div class="position-relative"><select id="country" class="form-select select2 select2-hidden-accessible" name="country" data-select2-id="country" tabindex="-1" aria-hidden="true">
                                        <option selected="" data-select2-id="2">USA</option>
                                        <option>Canada</option>
                                        <option>UK</option>
                                        <option>Germany</option>
                                        <option>France</option>
                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 477px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-country-container"><span class="select2-selection__rendered" id="select2-country-container" role="textbox" aria-readonly="true" title="USA">USA</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
                                </div>
                                <div class="mb-3 col-12">
                                    <label for="billingAddress" class="form-label">Billing Address</label>
                                    <input type="text" class="form-control" id="billingAddress" name="billingAddress" placeholder="Billing Address">
                                </div>
                                <div class="mb-3 col-sm-6">
                                    <label for="state" class="form-label">State</label>
                                    <input class="form-control" type="text" id="state" name="state" placeholder="California">
                                </div>
                                <div class="mb-3 col-sm-6">
                                    <label for="zipCode" class="form-label">Zip Code</label>
                                    <input type="text" class="form-control zip-code" id="zipCode" name="zipCode" placeholder="231465" maxlength="6">
                                </div>
                            </div>
                            <div class="mt-2">
                                <button type="submit" class="btn btn-primary me-2">Save changes</button>
                                <button type="reset" class="btn btn-label-secondary">Discard</button>
                            </div>
                            <input type="hidden"></form>
                    </div>
                    <!-- /Billing Address -->
                </div>
                <div class="card">
                    <!-- Billing History -->
                    <h5 class="card-header border-bottom">Billing History</h5>
                    <div class="card-datatable table-responsive">
                        <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer"><div class="row mx-1"><div class="col-12 col-md-6 d-flex align-items-center justify-content-center justify-content-md-start gap-3"><div class="dataTables_length" id="DataTables_Table_0_length"><label><select name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" class="form-select"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select></label></div><div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start mt-md-0 mt-3"><div class="dt-buttons btn-group flex-wrap"><button class="btn btn-secondary btn-primary" tabindex="0" aria-controls="DataTables_Table_0" type="button"><span><i class="bx bx-plus me-md-1"></i><span class="d-md-inline-block d-none">Create Invoice</span></span></button> </div></div></div><div class="col-12 col-md-6 d-flex align-items-center justify-content-end flex-column flex-md-row pe-3 gap-md-3"><div id="DataTables_Table_0_filter" class="dataTables_filter"><label><input type="search" class="form-control" placeholder="Search Invoice" aria-controls="DataTables_Table_0"></label></div><div class="invoice_status mb-3 mb-md-0"><select id="UserRole" class="form-select"><option value=""> Select Status </option><option value="Downloaded" class="text-capitalize">Downloaded</option><option value="Draft" class="text-capitalize">Draft</option><option value="Paid" class="text-capitalize">Paid</option><option value="Partial Payment" class="text-capitalize">Partial Payment</option><option value="Past Due" class="text-capitalize">Past Due</option><option value="Sent" class="text-capitalize">Sent</option></select></div></div></div><table class="invoice-list-table table border-top dataTable no-footer dtr-column" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info" style="width: 1031px;">
                            <thead>
                            <tr><th class="control sorting dtr-hidden" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 0px; display: none;" aria-label=": activate to sort column ascending"></th><th class="sorting sorting_desc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 63px;" aria-label="#ID: activate to sort column ascending" aria-sort="descending">#ID</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 42px;" aria-label=": activate to sort column ascending"><i class="bx bx-trending-up"></i></th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 263px;" aria-label="Client: activate to sort column ascending">Client</th><th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 66px;" aria-label="Total: activate to sort column ascending">Total</th><th class="text-truncate sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 123px;" aria-label="Issued Date: activate to sort column ascending">Issued Date</th><th class="sorting_disabled" rowspan="1" colspan="1" style="width: 92px;" aria-label="Balance">Balance</th><th class="cell-fit sorting_disabled" rowspan="1" colspan="1" style="width: 76px;" aria-label="Actions">Actions</th></tr>
                            </thead><tbody><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#5089</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 05/09/2020</span>" data-bs-original-title="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 05/09/2020</span>"><span class="badge badge-center rounded-pill bg-label-secondary w-px-30 h-px-30"><i class="bx bx-paper-plane bx-xs"></i></span></span></td><td><div class="d-flex justify-content-start align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-2"><span class="avatar-initial rounded-circle bg-label-primary">JK</span></div></div><div class="d-flex flex-column"><a href="pages-profile-user.html" class="text-body text-truncate"><span class="fw-medium">Jamal Kerrod</span></a><small class="text-truncate text-muted">Software Development</small></div></div></td><td><span class="d-none">3077</span>$3077</td><td><span class="d-none">20200509</span>09 May 2020</td><td><span class="badge bg-label-success"> Paid </span></td><td><div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Preview Invoice" data-bs-original-title="Preview Invoice"><i class="bx bx-show mx-1"></i></a><div class="dropdown"><a href="javascript:;" class="btn dropdown-toggle hide-arrow text-body p-0" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></a><div class="dropdown-menu dropdown-menu-end"><a href="javascript:;" class="dropdown-item">Download</a><a href="app-invoice-edit.html" class="dropdown-item">Edit</a><a href="javascript:;" class="dropdown-item">Duplicate</a><div class="dropdown-divider"></div><a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a></div></div></div></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#5041</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 11/19/2020</span>" data-bs-original-title="<span>Sent<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 11/19/2020</span>"><span class="badge badge-center rounded-pill bg-label-secondary w-px-30 h-px-30"><i class="bx bx-paper-plane bx-xs"></i></span></span></td><td><div class="d-flex justify-content-start align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-2"><img src="${contextPath}/frontend/assets/img/avatars/2.png" alt="Avatar" class="rounded-circle"></div></div><div class="d-flex flex-column"><a href="pages-profile-user.html" class="text-body text-truncate"><span class="fw-medium">Shamus Tuttle</span></a><small class="text-truncate text-muted">Software Development</small></div></div></td><td><span class="d-none">2230</span>$2230</td><td><span class="d-none">20201119</span>19 Nov 2020</td><td><span class="badge bg-label-success"> Paid </span></td><td><div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Preview Invoice" data-bs-original-title="Preview Invoice"><i class="bx bx-show mx-1"></i></a><div class="dropdown"><a href="javascript:;" class="btn dropdown-toggle hide-arrow text-body p-0" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></a><div class="dropdown-menu dropdown-menu-end"><a href="javascript:;" class="dropdown-item">Download</a><a href="app-invoice-edit.html" class="dropdown-item">Edit</a><a href="javascript:;" class="dropdown-item">Duplicate</a><div class="dropdown-divider"></div><a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a></div></div></div></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#5027</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/25/2020</span>" data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/25/2020</span>"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i class="bx bx-adjust bx-xs"></i></span></span></td><td><div class="d-flex justify-content-start align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-2"><img src="${contextPath}/frontend/assets/img/avatars/11.png" alt="Avatar" class="rounded-circle"></div></div><div class="d-flex flex-column"><a href="pages-profile-user.html" class="text-body text-truncate"><span class="fw-medium">Devonne Wallbridge</span></a><small class="text-truncate text-muted">Software Development</small></div></div></td><td><span class="d-none">2787</span>$2787</td><td><span class="d-none">20200925</span>25 Sep 2020</td><td><span class="badge bg-label-success"> Paid </span></td><td><div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Preview Invoice" data-bs-original-title="Preview Invoice"><i class="bx bx-show mx-1"></i></a><div class="dropdown"><a href="javascript:;" class="btn dropdown-toggle hide-arrow text-body p-0" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></a><div class="dropdown-menu dropdown-menu-end"><a href="javascript:;" class="dropdown-item">Download</a><a href="app-invoice-edit.html" class="dropdown-item">Edit</a><a href="javascript:;" class="dropdown-item">Duplicate</a><div class="dropdown-divider"></div><a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a></div></div></div></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#5024</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> -$202<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/02/2020</span>" data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> -$202<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/02/2020</span>"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i class="bx bx-adjust bx-xs"></i></span></span></td><td><div class="d-flex justify-content-start align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-2"><img src="${contextPath}/frontend/assets/img/avatars/8.png" alt="Avatar" class="rounded-circle"></div></div><div class="d-flex flex-column"><a href="pages-profile-user.html" class="text-body text-truncate"><span class="fw-medium">Ariella Filippyev</span></a><small class="text-truncate text-muted">Unlimited Extended License</small></div></div></td><td><span class="d-none">5285</span>$5285</td><td><span class="d-none">20200802</span>02 Aug 2020</td><td><span class="d-none">-$202</span>-$202</td><td><div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Preview Invoice" data-bs-original-title="Preview Invoice"><i class="bx bx-show mx-1"></i></a><div class="dropdown"><a href="javascript:;" class="btn dropdown-toggle hide-arrow text-body p-0" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></a><div class="dropdown-menu dropdown-menu-end"><a href="javascript:;" class="dropdown-item">Download</a><a href="app-invoice-edit.html" class="dropdown-item">Edit</a><a href="javascript:;" class="dropdown-item">Duplicate</a><div class="dropdown-divider"></div><a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a></div></div></div></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#5020</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 12/15/2020</span>" data-bs-original-title="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 12/15/2020</span>"><span class="badge badge-center rounded-pill bg-label-info w-px-30 h-px-30"><i class="bx bx-down-arrow-circle bx-xs"></i></span></span></td><td><div class="d-flex justify-content-start align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-2"><img src="${contextPath}/frontend/assets/img/avatars/9.png" alt="Avatar" class="rounded-circle"></div></div><div class="d-flex flex-column"><a href="pages-profile-user.html" class="text-body text-truncate"><span class="fw-medium">Roy Southerell</span></a><small class="text-truncate text-muted">UI/UX Design &amp; Development</small></div></div></td><td><span class="d-none">5219</span>$5219</td><td><span class="d-none">20201215</span>15 Dec 2020</td><td><span class="badge bg-label-success"> Paid </span></td><td><div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Preview Invoice" data-bs-original-title="Preview Invoice"><i class="bx bx-show mx-1"></i></a><div class="dropdown"><a href="javascript:;" class="btn dropdown-toggle hide-arrow text-body p-0" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></a><div class="dropdown-menu dropdown-menu-end"><a href="javascript:;" class="dropdown-item">Download</a><a href="app-invoice-edit.html" class="dropdown-item">Edit</a><a href="javascript:;" class="dropdown-item">Duplicate</a><div class="dropdown-divider"></div><a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a></div></div></div></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#4995</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 06/09/2020</span>" data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 06/09/2020</span>"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i class="bx bx-adjust bx-xs"></i></span></span></td><td><div class="d-flex justify-content-start align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-2"><img src="${contextPath}/frontend/assets/img/avatars/3.png" alt="Avatar" class="rounded-circle"></div></div><div class="d-flex flex-column"><a href="pages-profile-user.html" class="text-body text-truncate"><span class="fw-medium">Raynell Clendennen</span></a><small class="text-truncate text-muted">Template Customization</small></div></div></td><td><span class="d-none">3313</span>$3313</td><td><span class="d-none">20200609</span>09 Jun 2020</td><td><span class="badge bg-label-success"> Paid </span></td><td><div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Preview Invoice" data-bs-original-title="Preview Invoice"><i class="bx bx-show mx-1"></i></a><div class="dropdown"><a href="javascript:;" class="btn dropdown-toggle hide-arrow text-body p-0" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></a><div class="dropdown-menu dropdown-menu-end"><a href="javascript:;" class="dropdown-item">Download</a><a href="app-invoice-edit.html" class="dropdown-item">Edit</a><a href="javascript:;" class="dropdown-item">Duplicate</a><div class="dropdown-divider"></div><a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a></div></div></div></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#4993</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 10/22/2020</span>" data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 10/22/2020</span>"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i class="bx bx-adjust bx-xs"></i></span></span></td><td><div class="d-flex justify-content-start align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-2"><span class="avatar-initial rounded-circle bg-label-warning">LA</span></div></div><div class="d-flex flex-column"><a href="pages-profile-user.html" class="text-body text-truncate"><span class="fw-medium">Lutero Aloshechkin</span></a><small class="text-truncate text-muted">Unlimited Extended License</small></div></div></td><td><span class="d-none">4836</span>$4836</td><td><span class="d-none">20201022</span>22 Oct 2020</td><td><span class="badge bg-label-success"> Paid </span></td><td><div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Preview Invoice" data-bs-original-title="Preview Invoice"><i class="bx bx-show mx-1"></i></a><div class="dropdown"><a href="javascript:;" class="btn dropdown-toggle hide-arrow text-body p-0" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></a><div class="dropdown-menu dropdown-menu-end"><a href="javascript:;" class="dropdown-item">Download</a><a href="app-invoice-edit.html" class="dropdown-item">Edit</a><a href="javascript:;" class="dropdown-item">Duplicate</a><div class="dropdown-divider"></div><a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a></div></div></div></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#4989</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Past Due<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/01/2020</span>" data-bs-original-title="<span>Past Due<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 08/01/2020</span>"><span class="badge badge-center rounded-pill bg-label-danger w-px-30 h-px-30"><i class="bx bx-info-circle bx-xs"></i></span></span></td><td><div class="d-flex justify-content-start align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-2"><span class="avatar-initial rounded-circle bg-label-dark">OG</span></div></div><div class="d-flex flex-column"><a href="pages-profile-user.html" class="text-body text-truncate"><span class="fw-medium">Orson Grafton</span></a><small class="text-truncate text-muted">Unlimited Extended License</small></div></div></td><td><span class="d-none">5293</span>$5293</td><td><span class="d-none">20200801</span>01 Aug 2020</td><td><span class="badge bg-label-success"> Paid </span></td><td><div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Preview Invoice" data-bs-original-title="Preview Invoice"><i class="bx bx-show mx-1"></i></a><div class="dropdown"><a href="javascript:;" class="btn dropdown-toggle hide-arrow text-body p-0" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></a><div class="dropdown-menu dropdown-menu-end"><a href="javascript:;" class="dropdown-item">Download</a><a href="app-invoice-edit.html" class="dropdown-item">Edit</a><a href="javascript:;" class="dropdown-item">Duplicate</a><div class="dropdown-divider"></div><a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a></div></div></div></td></tr><tr class="odd"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#4989</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/23/2020</span>" data-bs-original-title="<span>Downloaded<br> <span class=&quot;fw-medium&quot;>Balance:</span> 0<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 09/23/2020</span>"><span class="badge badge-center rounded-pill bg-label-info w-px-30 h-px-30"><i class="bx bx-down-arrow-circle bx-xs"></i></span></span></td><td><div class="d-flex justify-content-start align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-2"><span class="avatar-initial rounded-circle bg-label-info">LH</span></div></div><div class="d-flex flex-column"><a href="pages-profile-user.html" class="text-body text-truncate"><span class="fw-medium">Lorine Hischke</span></a><small class="text-truncate text-muted">Unlimited Extended License</small></div></div></td><td><span class="d-none">3623</span>$3623</td><td><span class="d-none">20200923</span>23 Sep 2020</td><td><span class="badge bg-label-success"> Paid </span></td><td><div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Preview Invoice" data-bs-original-title="Preview Invoice"><i class="bx bx-show mx-1"></i></a><div class="dropdown"><a href="javascript:;" class="btn dropdown-toggle hide-arrow text-body p-0" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></a><div class="dropdown-menu dropdown-menu-end"><a href="javascript:;" class="dropdown-item">Download</a><a href="app-invoice-edit.html" class="dropdown-item">Edit</a><a href="javascript:;" class="dropdown-item">Duplicate</a><div class="dropdown-divider"></div><a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a></div></div></div></td></tr><tr class="even"><td class="  control" tabindex="0" style="display: none;"></td><td class="sorting_1"><a href="app-invoice-preview.html"><span class="fw-medium">#4965</span></a></td><td><span data-bs-toggle="tooltip" data-bs-html="true" aria-label="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> $666<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 03/18/2021</span>" data-bs-original-title="<span>Partial Payment<br> <span class=&quot;fw-medium&quot;>Balance:</span> $666<br> <span class=&quot;fw-medium&quot;>Due Date:</span> 03/18/2021</span>"><span class="badge badge-center rounded-pill bg-label-success w-px-30 h-px-30"><i class="bx bx-adjust bx-xs"></i></span></span></td><td><div class="d-flex justify-content-start align-items-center"><div class="avatar-wrapper"><div class="avatar avatar-sm me-2"><img src="${contextPath}/frontend/assets/img/avatars/1.png" alt="Avatar" class="rounded-circle"></div></div><div class="d-flex flex-column"><a href="pages-profile-user.html" class="text-body text-truncate"><span class="fw-medium">Yelena O'Hear</span></a><small class="text-truncate text-muted">Unlimited Extended License</small></div></div></td><td><span class="d-none">3789</span>$3789</td><td><span class="d-none">20210318</span>18 Mar 2021</td><td><span class="d-none">$666</span>$666</td><td><div class="d-flex align-items-center"><a href="javascript:;" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Send Mail" data-bs-original-title="Send Mail"><i class="bx bx-send mx-1"></i></a><a href="app-invoice-preview.html" data-bs-toggle="tooltip" class="text-body" data-bs-placement="top" aria-label="Preview Invoice" data-bs-original-title="Preview Invoice"><i class="bx bx-show mx-1"></i></a><div class="dropdown"><a href="javascript:;" class="btn dropdown-toggle hide-arrow text-body p-0" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></a><div class="dropdown-menu dropdown-menu-end"><a href="javascript:;" class="dropdown-item">Download</a><a href="app-invoice-edit.html" class="dropdown-item">Edit</a><a href="javascript:;" class="dropdown-item">Duplicate</a><div class="dropdown-divider"></div><a href="javascript:;" class="dropdown-item delete-record text-danger">Delete</a></div></div></div></td></tr></tbody>
                        </table><div class="row mx-2"><div class="col-sm-12 col-md-6"><div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div></div><div class="col-sm-12 col-md-6"><div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="DataTables_Table_0_previous"><a aria-controls="DataTables_Table_0" aria-disabled="true" role="link" data-dt-idx="previous" tabindex="-1" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="DataTables_Table_0" role="link" aria-current="page" data-dt-idx="0" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="1" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="2" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="3" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="4" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item next" id="DataTables_Table_0_next"><a href="#" aria-controls="DataTables_Table_0" role="link" data-dt-idx="next" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
                    </div>
                    <!--/ Billing History -->
                </div>
            </div>
        </div>

        <!-- Modal -->
        <!-- Pricing Modal -->
        <div class="modal fade" id="pricingModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-xl modal-simple modal-pricing">
                <div class="modal-content p-0 p-md-2 p-xl-5">
                    <div class="modal-body px-2 px-md-4">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        <!-- Pricing Plans -->
                        <div class="rounded-top">
                            <h2 class="text-center mb-2 mt-0 mt-md-4 px-2">Find the right plan for your site</h2>
                            <p class="text-center pb-3 px-2"> Get started with us - it's perfect for individuals and teams. Choose a subscription plan that meets your needs. </p>
                            <div class="d-flex align-items-center justify-content-center flex-wrap gap-2 py-5 mb-0">
                                <label class="switch switch-primary ms-sm-5 ps-sm-5 me-0">
                                    <span class="switch-label">Monthly</span>
                                    <input type="checkbox" class="switch-input price-duration-toggler" checked="">
                                    <span class="switch-toggle-slider">
                <span class="switch-on"></span>
                <span class="switch-off"></span>
              </span>
                                    <span class="switch-label">Annual</span>
                                </label>
                                <div class="mt-n5 ms-n5 ml-2 mb-2 d-none d-sm-inline-flex align-items-start">
                                    <img src="${contextPath}/frontend/assets/img/pages/pricing-arrow-light.png" alt="arrow img" class="scaleX-n1-rtl mt-2 pt-1" data-app-dark-img="pages/pricing-arrow-dark.png" data-app-light-img="pages/pricing-arrow-light.png">
                                    <span class="badge badge-sm bg-label-primary">Save upto 10%</span>
                                </div>
                            </div>

                            <div class="row mx-0 gy-3">
                                <!-- Basic -->
                                <div class="col-lg mb-md-0 mb-4">
                                    <div class="card border rounded shadow-none">
                                        <div class="card-body position-relative">
                                            <div class="my-3 pt-2 text-center">
                                                <img src="${contextPath}/frontend/assets/img/icons/unicons/bookmark.png" alt="Starter Image" height="80">
                                            </div>
                                            <h3 class="card-title text-center text-capitalize mb-1">Basic</h3>
                                            <p class="text-center">A simple start for everyone</p>
                                            <div class="text-center">
                                                <div class="d-flex justify-content-center">
                                                    <sup class="h6 pricing-currency mt-3 mb-0 me-1 text-primary">$</sup>
                                                    <h1 class="display-4 mb-0 text-primary">0</h1>
                                                    <sub class="h6 pricing-duration mt-auto mb-2 text-muted fw-normal">/month</sub>
                                                </div>
                                                <small class="position-absolute start-0 end-0 m-auto price-yearly price-yearly-toggle text-muted">Free</small>
                                            </div>

                                            <ul class="list-group my-4 list-unstyled">
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span> <span>100 responses a month</span> </li>
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span> <span>Unlimited forms and surveys</span> </li>
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span> <span>Unlimited fields</span> </li>
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span> <span>Basic form creation tools</span> </li>
                                                <li class="mb-0 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span> <span>Up to 2 subdomains</span> </li>
                                            </ul>

                                            <button type="button" class="btn btn-label-success d-grid w-100" data-bs-dismiss="modal">Your Current Plan</button>
                                        </div>
                                    </div>
                                </div>

                                <!-- Pro -->
                                <div class="col-lg mb-md-0 mb-4">
                                    <div class="card border-primary border shadow-none">
                                        <div class="card-body position-relative">
                                            <div class="position-absolute end-0 me-4 top-0 mt-4">
                                                <span class="badge bg-label-primary">Popular</span>
                                            </div>
                                            <div class="my-3 pt-2 text-center">
                                                <img src="${contextPath}/frontend/assets/img/icons/unicons/wallet-round.png" alt="Pro Image" height="80">
                                            </div>
                                            <h3 class="card-title text-center text-capitalize mb-1">Pro</h3>
                                            <p class="text-center">For small to medium businesses</p>
                                            <div class="text-center">
                                                <div class="d-flex justify-content-center">
                                                    <sup class="h6 pricing-currency mt-3 mb-0 me-1 text-primary">$</sup>
                                                    <h1 class="price-toggle price-yearly display-4 text-primary mb-0">7</h1>
                                                    <h1 class="price-toggle price-monthly display-4 text-primary mb-0 d-none">9</h1>
                                                    <sub class="h6 text-muted pricing-duration mt-auto mb-2 fw-normal">/month</sub>
                                                </div>
                                                <small class="position-absolute start-0 end-0 m-auto price-yearly price-yearly-toggle text-muted">$ 499 / year</small>
                                            </div>

                                            <ul class="list-group my-4 list-unstyled">
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span><span>Up to 5 users</span> </li>
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span><span>120+ components</span> </li>
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span><span>Basic support on Github</span> </li>
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span><span>Monthly updates</span> </li>
                                                <li class="mb-0 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span><span>Integrations</span> </li>
                                            </ul>

                                            <button type="button" class="btn btn-primary d-grid w-100" data-bs-dismiss="modal">Upgrade</button>
                                        </div>
                                    </div>
                                </div>

                                <!-- Enterprise -->
                                <div class="col-lg">
                                    <div class="card border rounded shadow-none">
                                        <div class="card-body">

                                            <div class="my-3 pt-2 text-center">
                                                <img src="${contextPath}/frontend/assets/img/icons/unicons/briefcase-round.png" alt="Pro Image" height="80">
                                            </div>
                                            <h3 class="card-title text-center text-capitalize mb-1">Enterprise</h3>
                                            <p class="text-center">Solution for big organizations</p>

                                            <div class="text-center">
                                                <div class="d-flex justify-content-center">
                                                    <sup class="h6 text-primary pricing-currency mt-3 mb-0 me-1">$</sup>
                                                    <h1 class="price-toggle price-yearly display-4 text-primary mb-0">16</h1>
                                                    <h1 class="price-toggle price-monthly display-4 text-primary mb-0 d-none">19</h1>
                                                    <sub class="h6 pricing-duration mt-auto mb-2 fw-normal text-muted">/month</sub>
                                                </div>
                                                <small class="position-absolute start-0 end-0 m-auto price-yearly price-yearly-toggle text-muted">$ 999 / year</small>
                                            </div>

                                            <ul class="list-group my-4 list-unstyled">
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span><span>Up to 10 users</span> </li>
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span><span>150+ components</span> </li>
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span><span>Basic support on Github</span> </li>
                                                <li class="mb-2 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span><span>Monthly updates</span> </li>
                                                <li class="mb-0 d-flex align-items-center"><span class="badge badge-center w-px-20 h-px-20 rounded-pill bg-label-primary me-2"><i class="bx bx-check bx-xs"></i></span><span>Speedy build tooling</span> </li>
                                            </ul>

                                            <button type="button" class="btn btn-label-primary d-grid w-100" data-bs-dismiss="modal">Upgrade</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/ Pricing Plans -->
                </div>
            </div>
        </div>
        <!--/ Pricing Modal -->

        <script src="${contextPath}/frontend/assets//js/pages-pricing.js"></script>

        <!--/ Modal -->


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
    <!-- Page JS -->
<script src="${contextPath}/frontend/assets/js/pages-pricing.js"></script>
<script src="${contextPath}/frontend/assets/js/pages-account-settings-billing.js"></script>
<script src="${contextPath}/frontend/assets/js/app-invoice-list.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-edit-cc.js"></script>
  
