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
            <div class="authentication-inner">
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
                        <h4 class="mb-2">환영합니다 보호자님❣️</h4>
                        <p class="mb-4">곧 회원가입 동의 메일이 도착할거에요!</p>

                        <form id="formAuthentication" class="mb-3" action="user/register" method="POST">
                            <div class="mb-3">
                                <label for="username" class="form-label">보호자님 성함</label>
                                <input
                                        type="text"
                                        class="form-control"
                                        id="username"
                                        name="username"
                                        placeholder="Enter your username"
                                        autofocus
                                />
                            </div>
                            <br>
                            <div class="d-flex mb-3">
                                <div class="flex-grow-1 row">
                                    <div class="col-9">
                                        <h6 class="mb-0">등록을 하신 보호자님이신가요?</h6>
                                        <small class="text-muted">이미 유치원 등록을 하셨다면 선택해주세요</small>
                                    </div>
                                    <div class="col-3 text-end">
                                        <div class="form-check form-switch">
                                            <input id="alreadyRegistered" class="form-check-input float-end" type="checkbox" role="switch">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex mb-3">
                                <div class="flex-grow-1 row">
                                    <div class="col-9">
                                        <h6 class="mb-0">다견 가정인가요?</h6>
                                        <small class="text-muted">다수의 강아지를 등록하신다면 선택해주세요</small>
                                    </div>
                                    <div class="col-3 text-end">
                                        <div class="form-check form-switch">
                                            <input id="multipleDogs" class="form-check-input float-end" type="checkbox" role="switch">
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <script>
                                document.getElementById("alreadyRegistered").addEventListener('click', ()=>{

                                })


                            </script>





                            <br>
                            <div class="mb-3">
                                <label for="dogname" class="form-label">강아지 이름</label>
                                <input
                                        type="text"
                                        class="form-control"
                                        id="dogname"
                                        name="username"
                                        placeholder="Enter your username"
                                        autofocus1
                                />
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="text" class="form-control" id="email" name="email" placeholder="Enter your email" />
                            </div>
                            <div class="mb-3 form-password-toggle">
                                <label class="form-label" for="password">Password</label>
                                <div class="input-group input-group-merge">
                                    <input
                                            type="password"
                                            id="password"
                                            class="form-control"
                                            name="password"
                                            placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                            aria-describedby="password"
                                    />
                                    <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                                </div>
                            </div>

                            <div class="mb-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="terms-conditions" name="terms" />
                                    <label class="form-check-label" for="terms-conditions">
                                        I agree to
                                        <a href="javascript:void(0);">privacy policy & terms</a>
                                    </label>
                                </div>
                            </div>
                            <button class="btn btn-primary d-grid w-100">Sign up</button>
                        </form>

                        <p class="text-center">
                            <span>Already have an account?</span>
                            <a href="${contextPath}/pages/login">
                                <span>Sign in instead</span>
                            </a>
                        </p>
                    </div>
                </div>
                <!-- Register Card -->
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

    <!-- / Content -->



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