
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="egovframework.com.cmm.LoginVO" %>

<c:choose>
    <c:when test="${empty sessionScope.ADMIN.ID}">
        <%-- <c:redirect url="/backoffice/auth/admin_login.php?Prev_URL=${pageContext.request.requestURI}" /> 
        <meta http-equiv="refresh" content="초; url=원하는_주소">--%>
    </c:when>
    <c:otherwise>
    
        <!-- Your existing JSP content here -->
        <!-- For example, display user information or perform other actions -->
    </c:otherwise>
</c:choose>



