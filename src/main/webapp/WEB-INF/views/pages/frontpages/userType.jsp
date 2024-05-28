<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
                <div class="card" style="min-width: 700px; min-height: 680px; max-height: 700px;">
                    <form method="POST"
                          action="${contextPath}/user/userType"
                            class="card-body" style="padding: 8% 10%;">
                        <!-- Logo -->
                        <div class="app-brand justify-content-center big-brand">
                            <a href="${contextPath}/pages/home" class="app-brand-link gap-2">
                  <span class="app-brand-logo demo">
                                  <img src="${contextPath}/frontend/assets/img/favicon/favicon.ico"
                                       style="height: 30px; width: 30px;">

                  </span>
                                <span class="app-brand-text demo text-body fw-bolder big-brand-text">MUMMOO</span>
                            </a>
                        </div>

                        <!-- /Logo -->
                        <h4 class="mb-2"></h4>
                        <div style="text-align: center; margin-bottom: 3rem">본인의 역할을 선택해주세요❣️</div>

                        <div class="btn-group btn-user-type" role="group" aria-label="Basic radio toggle button group">
                                <input
                                        type="radio"
                                        class="btn-check btn-sticker"
                                        name="btnradio"
                                        id="btnradio1"
                                        checked
                                        autocomplete="off"
                                />
                                <label class="btn btn-outline-primary" for="btnradio1"
                                       style="background-image: url('/resources/images/roundStickers/kindergarten.png');"
                                ></label>
                                <input type="radio" class="btn-check" name="btnradio" id="btnradio2"
                                       autocomplete="off"/>
                                <label class="btn btn-outline-primary  btn-sticker" for="btnradio2"
                                       style="background-image: url('/resources/images/roundStickers/handstogether-purple.png')"></label>
                                <input type="radio" class="btn-check btn-sticker" name="btnradio" id="btnradio3"
                                       autocomplete="off"/>
                                <label class="btn btn-outline-primary  btn-sticker" for="btnradio3"
                                       style="background-image: url('/resources/images/roundStickers/dpg-family.png');"></label>
                        </div>
                                <div class="label-group">
                                    <div class="text-labels">원장님</div>
                                    <div style="width: 5%"></div>
                                    <div class="text-labels">선생님</div>
                                    <div style="width: 5%"></div>
                                    <div class="text-labels">보호자님</div>
                                </div>
                                <div class="mb-3">
                                    <a class="btn btn-primary d-grid w-100"
                                       href="${contextPath}/admin/register">회원가입</a>
                                </div>
                                <p class="text-center">
                                    <span>혹시 초대 코드가 있으신가요?</span>
                                    <a href="${contextPath}/pages/register">
                                        <span>코드로 회원가입하기</span>
                                    </a>
                                </p>
                    </form>
                </div>
                <!-- /Register -->
            </div>
        </div>
    </div>
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