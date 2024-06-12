<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

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

                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#addDog"> 강아지 등록하기
                        </button>

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




