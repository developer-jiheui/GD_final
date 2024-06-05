<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>


<jsp:include page="/WEB-INF/views/layout/newHeader.jsp"/>
<jsp:include page="/WEB-INF/views/layout/sidebar.jsp"/>
<jsp:include page="/WEB-INF/views/userType/admin/layout/navbar.jsp"/>
<jsp:include page="/WEB-INF/views/layout/user.jsp"/>

<jsp:include page="/WEB-INF/views/userType/admin/page_contents/settings/admins.jsp"/>
<jsp:include page="/WEB-INF/views/layout/newFooter.jsp"/>