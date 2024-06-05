<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="${contextPath}/frontend/assets/vendor/libs/jquery/jquery.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/popper/popper.js"></script>
<script src="${contextPath}/frontend/assets/vendor/js/bootstrap.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

<script src="${contextPath}/frontend/assets/vendor/js/menu.js"></script>
<!-- endbuild -->

<!-- Vendors JS -->
<script src="${contextPath}/frontend/assets/vendor/libs/apex-charts/apexcharts.js"></script>

<!-- Main JS -->
<script src="${contextPath}/frontend/assets/js/main.js"></script>

<!-- Page JS -->
<script src="${contextPath}/frontend/assets/js/dashboards-analytics.js"></script>

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<script src="${contextPath}/frontend/assets/js/pages-pricing.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-create-app.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-add-new-cc.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-add-new-address.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-edit-user.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-enable-otp.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-share-project.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-two-factor-auth.js"></script>
<!--
- ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</html>