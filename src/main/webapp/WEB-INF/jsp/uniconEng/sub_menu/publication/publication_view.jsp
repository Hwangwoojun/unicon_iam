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
<jsp:include page="../../inc/dtd.jsp" flush="true"/>
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<!-- 전체 레이어 시작 -->
<jsp:include page="../../inc/UniconIncHeader.jsp" flush="true"/>
<jsp:include page="../../inc/UniconIncAside.jsp" flush="true"/>

<div id="mainContent" class="container g${gNum} s${sNum}">
	<div class="title">${sName}</div>
	<div class="inner">${resultList}
	
			<div class="board_view" id="29" >
				<div class="tit">
					<c:out value="${result.nttSj}" />
					<div class="date">
						<dl>
							<dt>Registration</dt>
							<dd><c:out value="${result.frstRegisterPnttm}" /></dd>
						</dl>
						<dl>
						<dt>hits</dt>
						<dd><c:out value="${result.inqireCo}" /></dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<div style="text-align: center;">
						<c:if test="${result.atchFileId ==''}">
								<img src="/images/unicon/img_publication_sample.jpg" alt="image"></c:if>
							<c:if test="${result.atchFileId!=''}">
								<c:import url="/cmm/fms/selectImageFileInfs.do" charEncoding="utf-8">
									<c:param name="atchFileId" value="${result.atchFileId}" />
								</c:import>
							</c:if>
					</div>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 40px;">
							<c:out value="${result.nttCn}" escapeXml="true" />
						</p>
					</div>
					
					
					<div style="margin-left: 90px; line-height: 220%;">
						<Citation>
						<p style="text-align: justify; width: 90%; padding-bottom: 40px;">
						<c:out value="${result.nttUrl}" escapeXml="true" />
							
						</p>
					</div>
					<%-- 영문 추가 -->
				</div>
				<%-- <div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="javascript:void(0);">이전글이 없습니다.</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/eng/publication/publication_view?no=${next}">Vehicle-to-grid
							as a competitive alternative to energy storage in a
							renewable-dominant power system: An integrated approach
							considering electric vehicle drivers and power system</a>
					</div>
				</div> --%>
				<a href="/eng/publication/publication" class="btn_list">List</a>
			</div>
	

			
		</div>
</div>

<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

