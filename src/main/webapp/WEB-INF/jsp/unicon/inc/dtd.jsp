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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import ="egovframework.com.cmm.LoginVO" %>
<title>UNICON 
	<c:choose>
	    <c:when test="${gNum == 'main'}">
	        | 탄소중립의 효과적 이행을 위한 글로벌 통합모형 개발 프로젝트
	    </c:when>
	    <c:when test="${sName != null && !sName.isEmpty()}">
	        | ${sName}
	    </c:when>
	    <c:otherwise>
	        ${gName}
	    </c:otherwise>
	</c:choose>
</title>
<meta charset="utf-8">
<meta name="robots" content="follow">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="subject" content="GIAM" />
<meta name="title" content="GIAM" />
<meta name="description" content="GIAM" />
<meta name="keywords" content="GIAM" />
<meta name="copyright" content="GIAM" />
<meta property="og:title" content="GIAM" />
<meta property="og:subject" content="GIAM" />
<meta property="og:description" content="GIAM" />
<meta property="og:image" content="/images/unicon/og_image.png" />
<meta name="author" content="http://">
<link rel="canonical" href="http://" />
<meta name="viewport" content="width=device-width initial-scale=1.0 maximum-scale=1.0 user-scalable=yes">

<%
    String ver_set = "?v000000";
%>

<link rel="icon" href="/images/unicon/favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" href="/unicon/fancybox/source/jquery.fancybox.css" media="screen" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<link rel="stylesheet" href="/css/unicon/slick.css" media="all">
<link rel="stylesheet" href="/css/unicon/swiper.css" media="all">
<link rel="stylesheet" href="/css/unicon/font.css" media="all">
<link href="//unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="/css/unicon/styles.css?${ver_set}" media="all">
<link rel="stylesheet" href="/css/unicon/reactive.css?${ver_set}" media="all">


<style>
   body { overflow: hidden; }
    .ie_wrap { display: none; } 
</style>


<script src="//code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="/unicon/fancybox/source/jquery.fancybox.js"></script>
<script src="/js/unicon/slick.js"></script>
<script src="/js/unicon/swiper.js"></script>
<script src="//unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="/js/unicon/com.js?${ver_set}"></script>

<script>
    function changeUrl(title, url) {
        if (typeof(history.pushState) !== "undefined") {
            history.pushState({title: title}, title, url);
        } else {
            alert("브라우저가 이 기능을 지원하지 않습니다.");
        }
  	}
</script>

<div class="blind_link"><a href="#mainContent">본문 바로가기</a></div>
