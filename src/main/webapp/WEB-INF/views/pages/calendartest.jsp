<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>


<jsp:include page="/WEB-INF/views/newLayout/header.jsp"/>
<jsp:include page="/WEB-INF/views/newLayout/header2.jsp"/>
<jsp:include page="/WEB-INF/views/newLayout/header3.jsp"/>
<jsp:include page="/WEB-INF/views/newLayout/sidebar.jsp"/>
<jsp:include page="/WEB-INF/views/newLayout/navbar.jsp"/>
<jsp:include page="/WEB-INF/views/newLayout/user.jsp"/>
<jsp:include page="/WEB-INF/views/page_contents/home/calendar.jsp"/>
<jsp:include page="/WEB-INF/views/newLayout/footer1.jsp"/>
<jsp:include page="/WEB-INF/views/newLayout/footer2.jsp"/>
<jsp:include page="/WEB-INF/views/newLayout/footer3.jsp"/>
















