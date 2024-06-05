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
                    <h4 class="mb-2">   </h4>
                    <p class="mb-4">우리 댕댕이들의 이야기를 보러오세요❣️</p>

                    <form id="formAuthentication" class="mb-3" action="${contextPath}/user/signin.do" method="POST">
                        <div class="mb-3">
                            <label for="email" class="form-label">Email or Username</label>
                            <input
                                    type="text"
                                    class="form-control"
                                    id="email"
                                    name="email"
                                    placeholder="Enter your email or username"
                                    autofocus
                            />
                        </div>
                        <div class="mb-3 form-password-toggle">
                            <div class="d-flex justify-content-between">
                                <label class="form-label" for="pw">Password</label>
                                <a href="${contextPath}/pages/forgotPw">
                                    <small>Forgot Password?</small>
                                </a>
                            </div>
                            <div class="input-group input-group-merge">
                                <input
                                        type="password"
                                        id="pw"
                                        class="form-control"
                                        name="pw"
                                        placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                        aria-describedby="password"
                                />
                                <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="remember-me" />
                                <label class="form-check-label" for="remember-me"> Remember Me </label>
                            </div>
                        </div>
                        <div class="mb-3">
                            <button class="btn btn-primary d-grid w-100" type="submit">Sign in</button>
                        </div>
                    </form>

                    <p class="text-center">
                        <span>New on our platform?</span>
                        <a href="${contextPath}/pages/register">
                            <span>Create an account</span>
                        </a>
                    </p>
                </div>
            </div>
            <!-- /Register -->
        </div>
    </div>
</div>
</div>
<!-- / Content -->
<script>
    document.getElementById()
</script>

<!--------VALIDATION & TAB--------->
<jsp:include page="/WEB-INF/views/layout/src_footer.jsp"/>
