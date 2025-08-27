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
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<jsp:include page="../../inc/dtd.jsp" flush="true"/>
<script language="javascript">
function fn_inqire_notice(nttId,bbsId) {
    document.subForm.nttId.value = nttId;
    document.subForm.bbsId.value = bbsId;
    document.subForm.action = "<c:url value='/kr/news/news_view'/>";
    document.subForm.submit();          
}
</script>
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>
<!-- 전체 레이어 시작 -->
<jsp:include page="../../inc/UniconIncHeader.jsp" flush="true"/>
<jsp:include page="../../inc/UniconIncAside.jsp" flush="true"/>

<div id="mainContent" class="container g${gNum} s${sNum}">
	<div class="title">${sName}</div>

		<div class="inner">
		<form name="searchfrm" method="get" action="">
			<input type="hidden" name="boardid" value="">
			<input type="hidden" name="category" value="">	
			<div class="board_top">
				<div class="total">총 <strong>${resultCnt}</strong>건</div>
			</div>
		</form>
		<ul class="gall_list news_list">
		<c:forEach var="result" items="${resultList}" varStatus="status">
			 <form name="subForm" method="post" action="<c:url value='/kr/news/news_view'/>">
			 <li>
					 <input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
		                        <input type="hidden" name="nttId"  value="<c:out value="${result.nttId}"/>" />
		                        <input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
		                        <input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
		                        <input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
		                        <input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
                 <a href="#LINK" onclick="javascript:fn_inqire_notice('<c:out value="${result.nttId}"/>','<c:out value="${result.bbsId}"/>'); return false;">
                     <span class="imgfit">
						<c:import url="/cmm/fms/selectImageFileInfs.do" charEncoding="utf-8">
							<c:param name="atchFileId" value="${result.atchFileId}" />
						</c:import>
						</span>
                      <p style="text-align: center;"><c:out value="${result.nttSj}" /></p>
                     <span class="date" style="text-align: center;"><c:out value="${result.frstRegisterPnttm}"/></span>
                 </a>
             </li>
             </form>
		<c:if test="${fn:length(resultList) == 0}">
		<!--  등록된 게시물이 없습니다.  -->
		</c:if>
		</c:forEach>
		</ul>
		

		<div class="board_bottom">
			<div class="paging">
			    <div class="pagination">
			    <ul class="paging_align">
			     <ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_noticeList" />
			    </ul>
			    </div>
			</div>
		</div> <!-- //board_bottom -->

	</div>

</div>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

