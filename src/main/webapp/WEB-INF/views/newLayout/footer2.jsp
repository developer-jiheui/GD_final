<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>


<div class="buy-now">
    <button type="button" class="btn btn-danger btn-buy-now" data-bs-toggle="modal"
            data-bs-target="#modalLong">
        <i class='bx bx-message-square-dots bx-sm'></i>
    </button>
</div>