<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<!-- Footer -->
<footer class="content-footer footer bg-footer-theme">
  <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
    <div class="mb-2 mb-md-0">
      ©
      <script>
        document.write(new Date().getFullYear());
      </script>
      , made with ❤️ by
      <a href="" target="_blank" class="footer-link fw-bolder">Jiheui Lee</a>
    </div>
    <div>
      <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>

      <a
              href=""
              target="_blank"
              class="footer-link me-4"
      >Documentation</a
      >


    </div>
  </div>
</footer>
<!-- / Footer -->

<div class="content-backdrop fade"></div>
</div>
<!-- Content wrapper -->
</div>
<!-- / Layout page -->
</div>

<!-- Overlay -->
<div class="layout-overlay layout-menu-toggle"></div>
</div>
<!-- / Layout wrapper -->

<div class="buy-now">
  <button type="button" class="btn btn-danger btn-buy-now" data-bs-toggle="modal"
          data-bs-target="#modalLong">
    <i class='bx bx-message-square-dots bx-md'></i>
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
<script src="${contextPath}/frontend/assets/vendor/libs/apex-charts/apexcharts.js"></script>

<!-- Main JS -->
<script src="${contextPath}/frontend/assets/js/main.js"></script>

<!-- Page JS -->
<script src="${contextPath}/frontend/assets/js/dashboards-analytics.js"></script>

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>

<script src="${contextPath}/resources/assets/js/index.js"></script>
</body>
</html>