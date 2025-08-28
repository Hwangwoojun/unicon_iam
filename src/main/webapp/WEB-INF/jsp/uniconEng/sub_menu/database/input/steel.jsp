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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<jsp:include page="../../../inc/dtd.jsp" flush="true"/>
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<!-- 전체 레이어 시작 -->
<jsp:include page="../../../inc/UniconIncHeader.jsp" flush="true"/>
<jsp:include page="../../../inc/UniconIncAside.jsp" flush="true"/>

<div id="mainContent" class="container g${gNum} s${sNum}">
	<div class="title">${sName}</div>
		<div class="reseach_con">
		<div class="inner">
			<div class="over_tbl">
				In ready.
			</div>
		</div>
	</div>
    					 
					
</div> <!-- //container -->
<script>
$(document).ready(function() {
    var isMouseDown = false;
    var startX, startY;
    var scrollLeft, scrollTop;

    $('.over_tbl').on('mousedown', function(e) {
      isMouseDown = true;
      startX = e.pageX - $(this).offset().left;
      startY = e.pageY - $(this).offset().top;
      scrollLeft = $(this).scrollLeft();
      scrollTop = $(this).scrollTop();
    });

    $(document).on('mousemove', function(e) {
      if (!isMouseDown) return;
      var mouseX = e.pageX - $('.over_tbl').offset().left;
      var mouseY = e.pageY - $('.over_tbl').offset().top;
      var deltaX = mouseX - startX;
      var deltaY = mouseY - startY;
      $('.over_tbl').scrollLeft(scrollLeft - deltaX);
      $('.over_tbl').scrollTop(scrollTop - deltaY);
    });

    $(document).on('mouseup', function() {
      isMouseDown = false;
    });

    $('.over_tbl').on('mouseleave', function() {
      isMouseDown = false;
    });
  });
</script>
<jsp:include page="../../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

