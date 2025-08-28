<%--
&lt;%&ndash;
  Class Name : EgovMainView.jsp
  Description : 메인화면
  Modification Information

      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성

    author   : 실행환경개발팀 JJY
    since    : 2011.08.31
&ndash;%&gt;
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<jsp:include page="../../inc/dtd.jsp" flush="true"/>
<script language="javascript">
function fn_inqire_notice(nttId,bbsId) {
    document.subForm.nttId.value = nttId;
    document.subForm.bbsId.value = bbsId;
    document.subForm.action = "<c:url value='/eng/publication/publication_view'/>";
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
	<c:forEach var="item" items="${publiList}">
    <c:set var="count" value="${count + 1}" />
</c:forEach>

	<div class="inner">
		<form name="searchfrm" method="post" action="/eng/publication/publication">
		&lt;%&ndash; 	<input type="hidden" name="mno" id="mno" value="${count + 1}"/> &ndash;%&gt;
			<div class="board_top">
				<div class="total">total of <strong> ${resultCnt}</strong> case</div>
				 <div class="search_area">
					&lt;%&ndash; <select name="sw" id="sw" class="text">
					    <option value="s" <c:if test="${param.sw == 's'}">selected</c:if>>제목</option>
					    <option value="c" <c:if test="${param.sw == 'c'}">selected</c:if>>내용</option>
					</select>
					<div class="text_box">
						<input type="text" name="search" id="search" value="${search}" class="text" placeholder="검색어를 입력해주세요">
						<button type="submit" class="btn">검색</button>
					</div>&ndash;%&gt;
				</div>
			</div>
		</form>
		<form name="subForm" method="post" action="<c:url value='/eng/publication/publication_view'/>">
			            <input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
		                        <input type="hidden" name="nttId"  value="<c:out value="${result.nttId}"/>" />
		                        <input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
		                        <input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
		                        <input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
		                        <input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
		<ul class="gall_list publication_list">
		<c:if test="${count > 0}">
			<c:forEach var="result" items="${resultList}">
	            <li>
                 <a href="#LINK" onclick="javascript:fn_inqire_notice('<c:out value="${result.nttId}"/>','<c:out value="${result.bbsId}"/>'); return false;">
			            <span class="imgfit">
							<c:if test="${result.atchFileId ==''}">
								<img src="/images/unicon/img_publication_sample.jpg" alt="image"></c:if>
							<c:if test="${result.atchFileId!=''}">
								<c:import url="/cmm/fms/selectImageFileInfs.do" charEncoding="utf-8">
									<c:param name="atchFileId" value="${result.atchFileId}" />
								</c:import>
							</c:if>
						<p>${result.nttSj}</p></a>

						</li>

			        </c:forEach>


				</c:if>
					<c:if test="${count == 0}">
					    등록된 게시물이 없습니다.
					</c:if>

			</ul>

			</form>


			<div class="paging" style="display: flex;  justify-content: center;  margin-top: 100px;">
			    <div class="pagination">
			    <ul class="paging_align" style="display: flex; padding: 10px;" >
			     <ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_noticeList" />
			    </ul>
			    </div>
			</div>

	</div>

</div>
</body>
</html>

--%>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Language" content="en" >
	<jsp:include page="../../inc/dtd.jsp" flush="true"/>
	<script type="text/javascript">
		function fn_inqire_notice(nttId,bbsId) {
			document.subForm.nttId.value = nttId;
			document.subForm.bbsId.value = bbsId;
			document.subForm.action = "<c:url value='/eng/publication/publication_view'/>";
			document.subForm.submit();
		}
	</script>
</head>
<body>
<noscript>JavaScript is required for full functionality.</noscript>

<jsp:include page="../../inc/UniconIncHeader.jsp" flush="true"/>
<jsp:include page="../../inc/UniconIncAside.jsp" flush="true"/>

<div id="mainContent" class="container g${gNum} s${sNum}">
	<div class="title">${sName}</div>

	<!-- 국문처럼 resultList 기준으로 count 설정 -->
	<c:set var="count" value="${fn:length(resultList)}" />

	<div class="inner">
		<form name="searchfrm" method="post" action="<c:url value='/eng/publication/publication'/>">
			<div class="board_top">
				<div class="total">total of <strong>${resultCnt}</strong> case</div>
				<div class="search_area"><!-- 검색 영역 사용 안함 --></div>
			</div>
		</form>

		<form name="subForm" method="post" action="<c:url value='/eng/publication/publication_view'/>">
			<input type="hidden" name="bbsId" value="" />
			<input type="hidden" name="nttId" value="" />
			<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
			<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
			<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
			<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>

			<ul class="gall_list publication_list">
				<c:if test="${not empty resultList}">
					<c:forEach var="result" items="${resultList}">
						<li>
							<a href="#LINK" onclick="fn_inqire_notice('<c:out value='${result.nttId}'/>','<c:out value='${result.bbsId}'/>'); return false;">
                                <span class="imgfit">
                                    <c:choose>
										<c:when test="${empty result.atchFileId}">
											<img src="<c:url value='/images/unicon/img_publication_sample.jpg'/>" alt="image"/>
										</c:when>
										<c:otherwise>
											<c:import url="<c:url value='/cmm/fms/selectImageFileInfs.do'/>" charEncoding="utf-8">
												<c:param name="atchFileId" value="${result.atchFileId}" />
											</c:import>
										</c:otherwise>
									</c:choose>
                                </span>
								<%--<p><c:out value="${result.nttSj}"/></p>--%>
							</a>
						</li>
					</c:forEach>
				</c:if>

				<c:if test="${empty resultList}">
					No posts registered.
				</c:if>
			</ul>
		</form>

		<div class="paging" style="display:flex;justify-content:center;margin-top:100px;">
			<div class="pagination">
				<ul class="paging_align" style="display:flex;padding:10px;">
					<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_noticeList" />
				</ul>
			</div>
		</div>
	</div>
</div>
</body>
</html>

