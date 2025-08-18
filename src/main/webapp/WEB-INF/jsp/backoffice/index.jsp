<%--
  Class Name : EgovMainView.jsp 
  Description : 메인화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="./inc/admin_top.jsp" flush="true"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<meta http-equiv="content-language" content="ko">

<style type="text/css">
.tcounter {
	width: 100%;
}
iframe {
	width: 100%;
	border: none;
	
}
</style>
</head>

<body >
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<jsp:include page="../backoffice/inc/menu.jsp" flush="true"/>

<c:set var="maingb" value="main" />
<jsp:include page="./headerin.jsp" flush="true"/> 


<link href="/css/backoffice/board.css" rel="stylesheet" type="text/css" />
<div id="admin-container">
	<div class="admin-snb">
		<div class="admin-snb-group" style="display:none;">
			<div class="snb-title"><h2>기본설정</h2></div>
			<ul class="snb-menu">
				<!-- <li><a href="/backoffice/module/admin/admin_set.php">기본정보 설정</a></li> -->
			</ul>
		</div>		
		<jsp:include page="./admin/admin_info.jsp" flush="true"/> 

	</div>
<script>

</script>
	<div id="admin-content">
		<iframe name="tcounter" id="tcounter" src="/cop/bbs/selectBoardList.do?bbsId=Publication" frameborder="0" marginheight="0" marginwidth="0" scrolling="no" width="100%" onload="adjustIframeHeight();"></iframe>
		
    </div>
</div>
<script>
	function adjustIframeHeight() {
		var iframe = document.getElementById('tcounter');
		iframe.style.height = iframe.contentWindow.document.body.scrollHeight
				+ 'px';
	}
</script>

</body>
</html>

