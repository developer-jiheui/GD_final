<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<jsp:include page="/WEB-INF/views/layout/header.jsp"/>
<body>
<!-- Content -->

<div id="register">
    <div class="container-xxl" style="max-width:min-content;">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner py-4">
                <!-- Register -->
                <div class="card" style="min-width: 400px">
                    <div class="card-body" style="padding: 8% 10%;">
                        <!-- Logo -->
                        <div class="app-brand justify-content-center big-brand">
                            <a href="${contextPath}/pages/home" class="app-brand-link gap-2">
                  <span class="app-brand-logo demo">
                                  <img src="${contextPath}/frontend/assets/img/favicon/favicon.ico" style="height: 30px; width: 30px;">

                  </span>
                                <span class="app-brand-text demo text-body fw-bolder big-brand-text">MUMMOO</span>
                            </a>
                        </div>


                        <!-- /Logo -->
                        <h4 class="mb-2">Reset Password 🔒</h4>
                        <p class="mb-4">Enter your confirmation number and new password</p>
                        <form id="formAuthentication" class="mb-3" action="${contextPath}/pages/home" method="POST">
                            <div class="mb-3">
                                <label for="code" class="form-label">Secret Code</label>
                                <input
                                        type="text"
                                        class="form-control"
                                        id="code"
                                        name="code"
                                        placeholder="Enter your secret code from your email"
                                        autofocus
                                />
                                <label for="newPw" class="form-label">new password</label>
                                <input
                                    type="text"
                                    class="form-control"
                                    id="newPw"
                                    name="newPw"
                                    placeholder="New PW"
                                    autofocus
                                />
                                <label for="newPwCheck" class="form-label">new password</label>

                                <input
                                        type="text"
                                        class="form-control"
                                        id="newPwCheck"
                                        name="newPwCheck"
                                        placeholder="New PW"
                                        autofocus
                                />
                            </div>
                            <button class="btn btn-primary d-grid w-100">Send Reset Link</button>
                        </form>
                        <div class="text-center">
                            <a href="${contextPath}/pages/login" class="d-flex align-items-center justify-content-center">
                                <i class="bx bx-chevron-left scaleX-n1-rtl bx-sm"></i>
                                Back to login
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /Forgot Password -->
            </div>
        </div>
    </div>

    <!-- / Content -->

    <div class="buy-now">
        <button type="button" class="btn btn-danger btn-buy-now" data-bs-toggle="modal"
                data-bs-target="#modalLong">
            <i class='bx bx-message-square-dots bx-md' ></i>
        </button>
    </div>

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="${contextPath}/frontend/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="${contextPath}/frontend/assets/vendor/libs/popper/popper.js"></script>
    <script src="${contextPath}/frontend/assets/vendor/js/bootstrap.js"></script>
    <script src="${contextPath}/frontend/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="${contextPath}/frontend/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="${contextPath}/frontend/assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>