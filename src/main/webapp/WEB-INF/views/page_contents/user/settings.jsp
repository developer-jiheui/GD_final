<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>


<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="fw-bold py-3 mb-4">
            <span class="text-muted fw-light">Account Settings /</span> 알림 설정</h4>

        <div class="row">
            <div class="col-md-12">

                    <div class="card">
                        <!-- Notifications -->
                        <h5 class="card-header">Recent Devices</h5>
                        <div class="card-body">
                      <span
                      >We need permission from your browser to show notifications.
                        <span class="notificationRequest"><strong>Request Permission</strong></span></span
                      >
                            <div class="error"></div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-striped table-borderless border-bottom">
                                <thead>
                                <tr>
                                    <th class="text-nowrap">Type</th>
                                    <th class="text-nowrap text-center">✉️ Email</th>
                                    <th class="text-nowrap text-center">🖥 Browser</th>
                                    <th class="text-nowrap text-center">👩🏻‍💻 App</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="text-nowrap">New for you</td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck1" checked />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck2" checked />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck3" checked />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-nowrap">Account activity</td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck4" checked />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck5" checked />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck6" checked />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-nowrap">A new browser used to sign in</td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck7" checked />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck8" checked />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck9" />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-nowrap">A new device is linked</td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck10" checked />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck11" />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-check d-flex justify-content-center">
                                            <input class="form-check-input" type="checkbox" id="defaultCheck12" />
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-body">
                            <h6>When should we send you notifications?</h6>
                            <form action="javascript:void(0);">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <select id="sendNotification" class="form-select" name="sendNotification">
                                            <option selected>Only when I'm online</option>
                                            <option>Anytime</option>
                                        </select>
                                    </div>
                                    <div class="mt-4">
                                        <button type="submit" class="btn btn-primary me-2">Save changes</button>
                                        <button type="reset" class="btn btn-outline-secondary">Discard</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /Notifications -->
                    </div>
            </div>
        </div>
    </div>

    <!-- Content wrapper -->
    <div class="content-wrapper">
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4">
                <span class="text-muted fw-light">Account Settings / </span> 소셜 미디어 연결
            </h4>

            <div class="row">
                <div class="col-md-12">

                    <div class="row">
                        <div class="col-md-6 col-12 mb-md-0 mb-4">
                            <div class="card">
                                <h5 class="card-header">Connected Accounts</h5>
                                <div class="card-body">
                                    <p>Display content from your connected accounts on your site</p>
                                    <!-- Connections -->
                                    <div class="d-flex mb-3">
                                        <div class="flex-shrink-0">
                                            <img src="${contextPath}/frontend/assets/img/icons/brands/google.png" alt="google" class="me-3" height="30" />
                                        </div>
                                        <div class="flex-grow-1 row">
                                            <div class="col-9 mb-sm-0 mb-2">
                                                <h6 class="mb-0">Google</h6>
                                                <small class="text-muted">Calendar and contacts</small>
                                            </div>
                                            <div class="col-3 text-end">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input float-end" type="checkbox" role="switch" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex mb-3">
                                        <div class="flex-shrink-0">
                                            <img src="${contextPath}/frontend/assets/img/icons/brands/slack.png" alt="slack" class="me-3" height="30" />
                                        </div>
                                        <div class="flex-grow-1 row">
                                            <div class="col-9 mb-sm-0 mb-2">
                                                <h6 class="mb-0">Slack</h6>
                                                <small class="text-muted">Communication</small>
                                            </div>
                                            <div class="col-3 text-end">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input float-end" type="checkbox" role="switch" checked />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex mb-3">
                                        <div class="flex-shrink-0">
                                            <img src="${contextPath}/frontend/assets/img/icons/brands/github.png" alt="github" class="me-3" height="30" />
                                        </div>
                                        <div class="flex-grow-1 row">
                                            <div class="col-9 mb-sm-0 mb-2">
                                                <h6 class="mb-0">Github</h6>
                                                <small class="text-muted">Manage your Git repositories</small>
                                            </div>
                                            <div class="col-3 text-end">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input float-end" type="checkbox" role="switch" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex mb-3">
                                        <div class="flex-shrink-0">
                                            <img
                                                    src="${contextPath}/frontend/assets/img/icons/brands/mailchimp.png"
                                                    alt="mailchimp"
                                                    class="me-3"
                                                    height="30"
                                            />
                                        </div>
                                        <div class="flex-grow-1 row">
                                            <div class="col-9 mb-sm-0 mb-2">
                                                <h6 class="mb-0">Mailchimp</h6>
                                                <small class="text-muted">Email marketing service</small>
                                            </div>
                                            <div class="col-3 text-end">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input float-end" type="checkbox" role="switch" checked />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex">
                                        <div class="flex-shrink-0">
                                            <img src="${contextPath}/frontend/assets/img/icons/brands/asana.png" alt="asana" class="me-3" height="30" />
                                        </div>
                                        <div class="flex-grow-1 row">
                                            <div class="col-9 mb-sm-0 mb-2">
                                                <h6 class="mb-0">Asana</h6>
                                                <small class="text-muted">Communication</small>
                                            </div>
                                            <div class="col-3 text-end">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input float-end" type="checkbox" role="switch" checked />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /Connections -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="card">
                                <h5 class="card-header">Social Accounts</h5>
                                <div class="card-body">
                                    <p>Display content from social accounts on your site</p>
                                    <!-- Social Accounts -->
                                    <div class="d-flex mb-3">
                                        <div class="flex-shrink-0">
                                            <img
                                                    src="${contextPath}/frontend/assets/img/icons/brands/facebook.png"
                                                    alt="facebook"
                                                    class="me-3"
                                                    height="30"
                                            />
                                        </div>
                                        <div class="flex-grow-1 row">
                                            <div class="col-8 col-sm-7 mb-sm-0 mb-2">
                                                <h6 class="mb-0">Facebook</h6>
                                                <small class="text-muted">Not Connected</small>
                                            </div>
                                            <div class="col-4 col-sm-5 text-end">
                                                <button type="button" class="btn btn-icon btn-outline-secondary">
                                                    <i class="bx bx-link-alt"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex mb-3">
                                        <div class="flex-shrink-0">
                                            <img
                                                    src="${contextPath}/frontend/assets/img/icons/brands/twitter.png"
                                                    alt="twitter"
                                                    class="me-3"
                                                    height="30"
                                            />
                                        </div>
                                        <div class="flex-grow-1 row">
                                            <div class="col-8 col-sm-7 mb-sm-0 mb-2">
                                                <h6 class="mb-0">Twitter</h6>
                                                <a href="https://twitter.com/Theme_Selection" target="_blank">@ThemeSelection</a>
                                            </div>
                                            <div class="col-4 col-sm-5 text-end">
                                                <button type="button" class="btn btn-icon btn-outline-danger">
                                                    <i class="bx bx-trash-alt"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex mb-3">
                                        <div class="flex-shrink-0">
                                            <img
                                                    src="${contextPath}/frontend/assets/img/icons/brands/instagram.png"
                                                    alt="instagram"
                                                    class="me-3"
                                                    height="30"
                                            />
                                        </div>
                                        <div class="flex-grow-1 row">
                                            <div class="col-8 col-sm-7 mb-sm-0 mb-2">
                                                <h6 class="mb-0">instagram</h6>
                                                <a href="https://www.instagram.com/themeselection/" target="_blank">@ThemeSelection</a>
                                            </div>
                                            <div class="col-4 col-sm-5 text-end">
                                                <button type="button" class="btn btn-icon btn-outline-danger">
                                                    <i class="bx bx-trash-alt"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex mb-3">
                                        <div class="flex-shrink-0">
                                            <img
                                                    src="${contextPath}/frontend/assets/img/icons/brands/dribbble.png"
                                                    alt="dribbble"
                                                    class="me-3"
                                                    height="30"
                                            />
                                        </div>
                                        <div class="flex-grow-1 row">
                                            <div class="col-8 col-sm-7 mb-sm-0 mb-2">
                                                <h6 class="mb-0">Dribbble</h6>
                                                <small class="text-muted">Not Connected</small>
                                            </div>
                                            <div class="col-4 col-sm-5 text-end">
                                                <button type="button" class="btn btn-icon btn-outline-secondary">
                                                    <i class="bx bx-link-alt"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex">
                                        <div class="flex-shrink-0">
                                            <img
                                                    src="${contextPath}/frontend/assets/img/icons/brands/behance.png"
                                                    alt="behance"
                                                    class="me-3"
                                                    height="30"
                                            />
                                        </div>
                                        <div class="flex-grow-1 row">
                                            <div class="col-8 col-sm-7 mb-sm-0 mb-2">
                                                <h6 class="mb-0">Behance</h6>
                                                <small class="text-muted">Not Connected</small>
                                            </div>
                                            <div class="col-4 col-sm-5 text-end">
                                                <button type="button" class="btn btn-icon btn-outline-secondary">
                                                    <i class="bx bx-link-alt"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /Social Accounts -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- / Content -->

        <!-- / Content -->