<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<div class="content-wrapper">

    <!-- Content -->

    <div class="container-xxl d-flex align-items-stretch flex-grow-1 p-0">


        <div class="flex-shrink-1 flex-grow-0 w-px-350 border-end container-p-x container-p-y">
            <div class="layout-example-sidebar layout-example-content-inner">
                Sidebar
            </div>
        </div>

        <div class="flex-shrink-1 flex-grow-1 container-p-x container-p-y">
            <!-- Layout Demo -->
            <div class="layout-demo-wrapper">
                <div class="layout-demo-placeholder">
                    <img src="../../assets/img/layouts/layout-content-navbar-and-sidebar-light.png" class="img-fluid" alt="Layout content navbar + sidebar" data-app-light-img="layouts/layout-content-navbar-and-sidebar-light.png" data-app-dark-img="layouts/layout-content-navbar-and-sidebar-dark.png">
                </div>
                <div class="layout-demo-info">
                    <h4>Layout content navbar + sidebar</h4>
                    <p>Container layout sets a <code>max-width</code> at each responsive breakpoint.</p>
                </div>
            </div>
            <!--/ Layout Demo -->
        </div>

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