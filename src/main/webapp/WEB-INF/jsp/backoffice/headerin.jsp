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
<link rel="stylesheet" type="text/css" href="/css/backoffice/style.css" />
<link rel="stylesheet" type="text/css" href="/js/common/datePicker/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="/js/common/fancybox/source/jquery.fancybox.css" media="screen" />
<link rel="stylesheet" type="text/css" href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" />
<script type="text/javascript" src="/js/backoffice/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="/js/common/datePicker/jquery-ui.min.js"></script>


<script type="text/javascript" src="/js/common/layer.js"></script>
<script type="text/javascript" src="/js/common/shop.js"></script>

<c:if test="${not empty maingb and maingb ne 'main'}">
   <script src="/js/common/common.js" type="text/javascript"></script>
</c:if>

<script>
</script>


<style type="text/css">
	/* https://ionicons.com/ */
	.newtop ul li {float:left;width:95px;text-align:center;padding-top:9px;}
	.newtop ul li a{text-decoration:none;color:#e4e4e4;}
	.newtop ul li a:hover,  
	.newtop ul li a:active,  
	.newtop ul li a:focus{color:#999999;}
	.newtop ul li span{font-size:12px;font-weight:bold;}
	.newtop ul li i{font-size:32px;}
	
	.newhomevi li {float:right;padding-left:20px;padding-top:5px;text-align:right;vertical-align:middle;}
	.newhomevi li a{text-decoration:none;color:#e4e4e4;}
	.newhomevi li a i{font-size:13px;}
</style>

</head>

<body >
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<div id="admin-wrapper">
	<div id="admin-header">
    	<div class="admin-top-content">
            <h1 class="top-logo"><a href="/backoffice"><img src="/images/backoffice/logo_admin.gif" alt="관리자모드" /></a></h1>
            <div class="top-util">
                <div class="visitor-name"><strong>${userinfo}  님 로그인</strong></div>
				<ul class="newhomevi">
					<li><a href="/backoffice/auth/logout.php" title="로그아웃"><i class="icon ion-md-unlock"></i> 로그아웃</a></li>					
					
					<li><a href="/backoffice/index.php" title="관리자메인"><i class="icon ion-md-home"></i> HOME</a></li>
				</ul>
			</div>
		</div>
			
    </div>
</body>
</html>

