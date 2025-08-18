<%--
  Class Name : EgovIncTopnav.jsp
  Description : 상단메뉴(include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="egovframework.com.cmm.LoginVO" %>
<c:choose>
    <c:when test="${param.carName == 'bmw'}">Driving BMW</c:when>
    <c:when test="${param.carName == 'reno'}">Driving Reno</c:when>
    <c:when test="${param.carName == 'audi'}">Driving Audi</c:when>
    <c:otherwise>Driving nothing at Home...</c:otherwise>
</c:choose>