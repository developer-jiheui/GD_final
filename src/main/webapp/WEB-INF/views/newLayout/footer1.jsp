<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
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
<%--            <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>--%>

<%--            <a--%>
<%--                    href=""--%>
<%--                    target="_blank"--%>
<%--                    class="footer-link me-4"--%>
<%--            >Documentation</a--%>
<%--            >--%>


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


<!-- Drag Target Area To SlideIn Menu On Small Screens -->
<div class="drag-target"></div>

</div>
<!-- / Layout wrapper -->
