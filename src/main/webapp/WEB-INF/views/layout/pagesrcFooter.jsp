<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<div class="content-backdrop fade"></div>
</div>
<!-- Content wrapper -->
</div>
<!-- / Layout page -->
</div>



<!-- Overlay -->
<div class="layout-overlay layout-menu-toggle"></div>


<!-- Drag Target Area To SlideIn Menu On Small Screens -->
<div class="drag-target"></div>

</div>
<!-- / Layout wrapper -->




<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->

<script src="${contextPath}/frontend/assets/vendor/libs/jquery/jquery.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/popper/popper.js"></script>
<script src="${contextPath}/frontend/assets/vendor/js/bootstrap.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/hammer/hammer.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/i18n/i18n.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/typeahead-js/typeahead.js"></script>
<script src="${contextPath}/frontend/assets/vendor/js/menu.js"></script>

<!-- endbuild -->

<!-- Vendors JS -->
<script src="${contextPath}/frontend/assets/vendor/libs/fullcalendar/fullcalendar.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/@form-validation/popular.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/@form-validation/bootstrap5.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/@form-validation/auto-focus.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/select2/select2.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/moment/moment.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/flatpickr/flatpickr.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/cleavejs/cleave.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/cleavejs/cleave-phone.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/sweetalert2/sweetalert2.js"></script>
<!-- Main JS -->
<script src="${contextPath}/frontend/assets/js/main.js"></script>


<!-- Page JS -->
<script src="${contextPath}/frontend/assets/js/app-calendar-events.js"></script>
<script src="${contextPath}/frontend/assets/js/app-calendar.js"></script>
<script src="${contextPath}/frontend/assets/js/app-invoice-list.js"></script>
<script src="${contextPath}/frontend/assets/js/pages-pricing.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-create-app.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-add-new-cc.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-add-new-address.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-edit-user.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-enable-otp.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-share-project.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-two-factor-auth.js"></script>
</body>

</html>
