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

<!--Under Maintenance -->
<div class="container-xxl container-p-y">
    <div class="misc-wrapper">
        <p class="mx-2" style="margin-bottom: 0.5rem">우리 아이들의 하루와 가정이 가까워지는 따뜻한 소통공간</p>
        <h2 class=" mx-2" style="margin-bottom: 4rem">mummoo에 오신걸 환영합니다!❣️</h2>
        <a href="${contextPath}/pages/userType" class="btn btn-primary">START</a>
        <div class="">
            <img
                    src="${contextPath}/resources/images/frontpage/dog.png"
                    alt="girl-doing-yoga-light"

                    class="img-fluid"
                    data-app-dark-img="illustrations/girl-doing-yoga-dark.png"
                    data-app-light-img="illustrations/girl-doing-yoga-light.png"
            />
        </div>
    </div>
</div>
<!-- /Under Maintenance -->

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