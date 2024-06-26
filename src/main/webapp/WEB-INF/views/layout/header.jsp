<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<html
        lang="en"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="${contextPath}/frontend/assets/"
        data-template="vertical-menu-template-free"
>
<head>
  <meta charset="utf-8" />
  <meta
          name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
  />

  <title>멈무멈멈
  </title>
  <script src="${contextPath}/frontend/assets/vendor/libs/jquery/jquery.js"></script>

  <meta name="description" content="" />

  <!-- Favicon -->
  <link
          rel="icon"
          type="image/x-icon"
          href="${contextPath}/frontend/assets/img/favicon/favicon.ico"
  />

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
  <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
        rel="stylesheet">

  <!-- Icons -->

  <link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/fonts/boxicons.css">
  <link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/fonts/fontawesome.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
  <link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/fonts/flag-icons.css">

  <!-- Core CSS -->
  <link
          rel="stylesheet"
          href="${contextPath}/frontend/assets/vendor/css/core.css"
          class="template-customizer-core-css"
  />
  <link
          rel="stylesheet"
          href="${contextPath}/frontend/assets/vendor/css/theme-default.css"
          class="template-customizer-theme-css"
  />
  <link
          rel="stylesheet"
          href="${contextPath}/frontend/assets/css/demo.css"
  />


  <!-- Vendors CSS -->
  <link
          rel="stylesheet"
          href="${contextPath}/frontend/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"
  />

  <link
          rel="stylesheet"
          href="${contextPath}/frontend/assets/vendor/libs/apex-charts/apex-charts.css"
  />

  <!-- Page CSS -->
<%--  <link rel="stylesheet" href="${contextPath}/frontend/assets/css/addition.css" />--%>
  <!-- Page -->
  <link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/css/pages/page-misc.css" />

  <!-- Helpers -->
  <script src="${contextPath}/frontend/assets/vendor/js/helpers.js"></script>

  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="${contextPath}/frontend/assets/js/config.js"></script>

  <link rel="stylesheet" type="text/css" href="${contextPath}/frontend/assets/vendor/css/rtl/core.css"
        class="template-customizer-core-css">
  <link rel="stylesheet" type="text/css" href="${contextPath}/frontend/assets/vendor/css/rtl/theme-default.css"
        class="template-customizer-theme-css">

  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Poppins%3Aital%2Cwght%400%2C400%3B0%2C500%3B0%2C700&amp;display=swap">
</head>
