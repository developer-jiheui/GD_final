<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<jsp:include page="/WEB-INF/views/layout/newHeader.jsp"/>

<c:if test="${sessionScope.user.userType==0}">
    <jsp:include page="/WEB-INF/views/layout/admin/sidebar.jsp"/>
</c:if>
<c:if test="${sessionScope.user.userType==1}">
    <jsp:include page="/WEB-INF/views/layout/sidebar.jsp"/>
</c:if>
<c:if test="${sessionScope.user.userType==2}">
    <jsp:include page="/WEB-INF/views/layout/sidebar.jsp"/>
</c:if>

<c:if test="${sessionScope.user.userType==0}">
    <jsp:include page="/WEB-INF/views/layout/admin/navbar.jsp"/>
</c:if>
<c:if test="${sessionScope.user.userType==1}">
    <jsp:include page="/WEB-INF/views/layout/navbar.jsp"/>
</c:if>
<c:if test="${sessionScope.user.userType==2}">
    <jsp:include page="/WEB-INF/views/layout/navbar.jsp"/>
</c:if>
<jsp:include page="/WEB-INF/views/layout/user.jsp"/>

<c:if test="${sessionScope.user.userType==0}">
    <jsp:include page="/WEB-INF/views/page_contents/home/admin/home.jsp"/>
</c:if>
<c:if test="${sessionScope.user.userType==1}">
    <jsp:include page="/WEB-INF/views/page_contents/home/user/home.jsp"/>
</c:if>
<c:if test="${sessionScope.user.userType==2}">
    <jsp:include page="/WEB-INF/views/page_contents/home/user/home.jsp"/>
</c:if>

<jsp:include page="/WEB-INF/views/layout/newFooter.jsp"/>