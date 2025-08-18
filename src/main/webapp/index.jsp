<%--
  Class Name : index.jsp
  Description : 최초화면으로 메인화면으로 이동한다.(system)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 실행환경 개발팀 JJY
    since    : 2011.08.31
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%--
<jsp:forward page="/cmm/main/mainPage.do"/>
--%>
<html>
<head>
<title>unicon</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5c52c098a8079ad42fdd4287ff710f11&libraries=services,clusterer,drawing"></script>
<script type="text/javaScript">
	document.location.href="<c:url value='/kr/mainUnicon'/>"
</script>
</head>
<body>
	<h3>unicon</h3>
</body>
</html>