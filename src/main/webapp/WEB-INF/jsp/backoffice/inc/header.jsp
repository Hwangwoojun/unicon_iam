<%--
  Class Name : EgovIncHeader.jsp
  Description : 화면상단 Header(include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import ="egovframework.com.cmm.LoginVO" %>
  
<jsp:include page="./auth.jsp" flush="true"/>

<!-- 다른 페이지 완료 후 설정  -->
<%-- <jsp:include page="./whereis.jsp" flush="true"/> --%>


<meta http-equiv="imagetoolbar" content="no" />

<link rel="stylesheet" type="text/css" href="/css/backoffice/style.css" />
<link rel="stylesheet" type="text/css" href="/js/common/datePicker/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="/js/common/fancybox/source/jquery.fancybox.css" media="screen" />
<link rel="stylesheet" type="text/css" href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" />
<script type="text/javascript" src="/js/backoffice/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="/js/common/datePicker/jquery-ui.min.js"></script>

<div class="header">

	<a href="/backoffice/index" class="logo">관리자모드</a>
	<a href="javascript:void(0);" class="btn_menu">
		<p class="t"></p>
		<p class="m"></p>
		<p class="b"></p>
	</a>
	<div class="gnb">
		<div class="black"></div> 
		<ul>
			
		  <%--   <li class="${topMenuClass[1]}">
		            <a href="/backoffice/module/board/board_view.php?boardid=metal_research"><img src="/images/backoffice/icon_gnb03.svg" alt="icon"><p>Research</p></a>
		        </li>
			<li class="${topMenuClass[2]}">
		            <a href="/backoffice/module/board/board_view.php?boardid=metal_research"><img src="/images/backoffice/icon_gnb03.svg" alt="icon"><p>Database</p></a>
		        </li>
 			<li class="${topMenuClass[3]}">
		            <a href="#LINK" onclick="javascript:changeSrc('Achievements_Inter'); return false;"><img src="/images/backoffice/icon_gnb03.svg" alt="icon"><p>Achievements</p></a>
		        </li> --%>
		    <li class="${topMenuClass[4]}">
		            <a href="#LINK" onclick="javascript:changeSrc('Publication'); return false;"><img src="/images/backoffice/icon_gnb05.svg" alt="icon"><p>Publication</p></a>
		        </li>
		    <li class="${topMenuClass[5]}">
		            <a href="#LINK" onclick="javascript:changeSrc('News'); return false;"><img src="/images/backoffice/icon_gnb05.svg" alt="icon"><p>NEWS</p></a>
		        </li>
		</ul>
	</div>
	<div class="mem_set">
		<div class="name"><i style="text-align: center;"><img src="/images/backoffice/icon_mem.svg" alt=""></div>${userinfo}님
		<a href="/unicon/backoffice/main">HOME</a>
		<a href="/" target="_blank">내 홈페이지</a>
		<a href="/unicon/backoffice/logout">로그아웃</a>
	</div>
</div>		
