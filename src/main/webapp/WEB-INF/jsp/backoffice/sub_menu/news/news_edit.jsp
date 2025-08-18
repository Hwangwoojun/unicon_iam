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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<jsp:include page="../../inc/admin_top.jsp" flush="true"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<meta http-equiv="content-language" content="ko">
<style type="text/css">
.container {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 80%;
    max-width: 600px;
}

h2 {
    margin-top: 0;
    color: #333333;
}

form {
    display: flex;
    flex-direction: column;
}

label {
    margin-top: 10px;
    margin-bottom: 5px;
    font-weight: bold;
}

input[type="text"],
textarea {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    width: 100%;
    box-sizing: border-box;
}

.button a{
    padding: 10px;
    margin-top: 20px;
    border: none;
    border-radius: 4px;
    background-color: #007bff;
    color: white;
    font-size: 16px;
    cursor: pointer;
    text-align: center;
}

button:hover {
    background-color: 

</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<meta http-equiv="content-language" content="ko">
<link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >
<link href="<c:url value='${brdMstrVO.tmplatCours}' />" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<c:url value='/js/EgovBBSMng.js' />"></script>
<script type="text/javascript" src="<c:url value='/js/EgovMultiFile.js'/>" ></script>
<script type="text/javascript" src="<c:url value='/js/EgovCalPopup.js'/>" ></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="board" staticJavascript="false" xhtml="true" cdata="false"/>
<c:if test="${anonymous == 'true'}"><c:set var="prefix" value="/anonymous"/></c:if>
<script type="text/javascript">
    function fn_egov_validateForm(obj) {
        return true;
    }
    
    function fn_egov_regist_notice() {
        //document.board.onsubmit();
        
        if (!validateBoard(document.board)){
            return;
        }
        <c:if test="${bdMstr.bbsAttrbCode == 'BBSA02'}">
        if(document.getElementById("egovComFileUploader").value==""){
            alert("갤러리 게시판의 경우 이미지 파일 첨부가 필수사항입니다.");
            return false;
        }
        </c:if>
        if (confirm('<spring:message code="common.regist.msg" />')) {
            //document.board.onsubmit();
            document.board.action = "<c:url value='/cop/bbs${prefix}/insertBoardArticle.do'/>";
            document.board.submit();
        }
    }
    
    function fn_egov_select_noticeList() {
        document.board.action = "<c:url value='/cop/bbs/selectBoardList.do'/>"+ "?bbsId=" +"<c:out value='${bdMstr.bbsId}'/>";
        document.board.submit();
    }   
</script>
</head>

<body >
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<jsp:include page="../../../backoffice/inc/menu.jsp" flush="true"/>

<c:set var="maingb" value="main" />
<jsp:include page="../../headerin.jsp" flush="true"/> 
<jsp:include page="../../inc/dtd.jsp" flush="true"/>



<div id="admin-container">
	<div id="admin-content">
		<!--// content -->
	<div class="admin-title-top">
		<h2 class="admin-title">관리자 메인</h2>
		<div class="admin-title-right">HOME &nbsp;&gt;&nbsp; Publication</div>
	</div>

		<div class="admin-top">
			<!-- 그래프 -->
			<div id="tabs" class="admin-graph">
				<div class="admin-tab">
					<ul class="tabe">
						<li><a href="#tab1" onclick="viewCount(1)">Publication</a></li>
					</ul>
				</div>
				
				
			</div>
		<form:form modelAttribute="board" name="board" method="post" enctype="multipart/form-data" >
				
				<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
				<input type="hidden" name="bbsId" value="<c:out value='${bdMstr.bbsId}'/>" />
				<input type="hidden" name="bbsAttrbCode" value="<c:out value='${bdMstr.bbsAttrbCode}'/>" />
				<input type="hidden" name="bbsTyCode" value="<c:out value='${bdMstr.bbsTyCode}'/>" />
				<input type="hidden" name="replyPosblAt" value="<c:out value='${bdMstr.replyPosblAt}'/>" />
				<input type="hidden" name="fileAtchPosblAt" value="<c:out value='${bdMstr.fileAtchPosblAt}'/>" />
				<input type="hidden" name="posblAtchFileNumber" value="<c:out value='${bdMstr.posblAtchFileNumber}'/>" />
				<input type="hidden" name="posblAtchFileSize" value="<c:out value='${bdMstr.posblAtchFileSize}'/>" />
				<input type="hidden" name="tmplatId" value="<c:out value='${bdMstr.tmplatId}'/>" />
				
				<input type="hidden" name="cal_url" value="<c:url value='/sym/cmm/EgovNormalCalPopup.do'/>" />
				<input type="hidden" name="authFlag" value="<c:out value='${bdMstr.authFlag}'/>" />
				
				<c:if test="${anonymous != 'true'}">
					<input type="hidden" name="ntcrNm" value="dummy">   <!-- validator 처리를 위해 지정 -->
					<input type="hidden" name="password" value="dummy"> <!-- validator 처리를 위해 지정 -->
				</c:if>
				
				<c:if test="${bdMstr.bbsAttrbCode != 'BBSA01'}">
				   <input name="ntceBgnde" type="hidden" value="10000101">
				   <input name="ntceEndde" type="hidden" value="99991231">
				</c:if>
                    <div id="border" class="modify_user" >
                        <table style="width: 90%; ">
                            <tr>
						        <th width="20%" height="23"  nowrap="nowrap"><label for="nttSj"><spring:message code="cop.nttSj" /></label>
						        <img src="<c:url value='/images/required.gif' />" width="15" height="15" alt="required" />
						        </th>
						        <td width="80%" nowrap >
						          <input id="nttSj" name="nttSj" type="text" size="60" value=""  maxlength="60" > 
						          <br/><form:errors path="nttSj" />
						        </td>
						        <th width="20%" height="23"  nowrap="nowrap"><label for="nttSjEng">영문 제목</label>
						        <img src="<c:url value='/images/required.gif' />" width="15" height="15" alt="required" />
						        </th>
						        <td width="80%" nowrap>
						          <input id="nttSjEng" name="nttSjEng" type="text" size="60" value=""  maxlength="60" > 
						          <br/><form:errors path="nttSjEng" />
						        </td>
						    </tr>
						    <tr> 
						        <th height="23" ><label for="nttCn"><spring:message code="cop.nttCn" /></label>
                                <img src="<c:url value='/images/required.gif' />" width="15" height="15" alt="required" />
                                </th>
						        <td >
						          <textarea id="nttCn" name="nttCn" class="textarea" cols="75" rows="20" style="width:99%;"></textarea> 
						          <form:errors path="nttCn" />
						        </td>
						        <th height="23" ><label for="nttCnEng">영문 내용</label>
                                <img src="<c:url value='/images/required.gif' />" width="15" height="15" alt="required" />
                                </th>
						        <td>
						          <textarea id="nttCnEng" name="nttCnEng" class="textarea" cols="75" rows="20" style="width:99%;"></textarea> 
						          <form:errors path="nttCnEng" />
						        </td>
						        
						    </tr>
						    <tr>
						   	    <th height="23"  nowrap="nowrap"><label for="nttUrl">링크URL</label>
                                <img src="<c:url value='/images/required.gif' />" width="15" height="15" alt="required" />
                                </th>
                                <td width="70%" nowrap colspan="3">
						          <input id="nttUrl" name="nttUrl" type="text" size="80" value=""  maxlength="60" > 
						          <br/><form:errors path="nttUrl" />
						        </td>
						    </tr>
						    <c:choose>
						        <c:when test="${bdMstr.bbsAttrbCode == 'BBSA01'}">
						          <tr> 
						            <th height="23" ><spring:message code="cop.noticeTerm" />
	                                <img src="<c:url value='/images/required.gif' />" width="15" height="15" alt="required" />
	                                </th>
						            <td colspan="3">
						              <input name="ntceBgnde" type="hidden" >
						              <input name="ntceBgndeView" type="text" size="10" value=""  title="게시시작일" readonly="readonly"
						                onClick="javascript:fn_egov_NormalCalendar(document.board, document.board.ntceBgnde, document.board.ntceBgndeView,'','<c:url value='/sym/cmm/EgovselectNormalCalendar.do'/>');" >
						              <img src="<c:url value='/images/calendar.gif' />"
						                onClick="javascript:fn_egov_NormalCalendar(document.board, document.board.ntceBgnde, document.board.ntceBgndeView,'','<c:url value='/sym/cmm/EgovselectNormalCalendar.do'/>');"
						                width="15" height="15" alt="calendar">
						              ~
						              <input name="ntceEndde" type="hidden"  />
						              <input name="ntceEnddeView" type="text" size="10" value=""  title="게시종료일" readonly="readonly"
						                onClick="javascript:fn_egov_NormalCalendar(document.board, document.board.ntceEndde, document.board.ntceEnddeView,'','<c:url value='/sym/cmm/EgovselectNormalCalendar.do'/>');"  >
						              <img src="<c:url value='/images/calendar.gif' />"
						                onClick="javascript:fn_egov_NormalCalendar(document.board, document.board.ntceEndde, document.board.ntceEnddeView,'','<c:url value='/sym/cmm/EgovselectNormalCalendar.do'/>');"
						                width="15" height="15" alt="calendar">
						                <br/><form:errors path="ntceBgnde" />
						                <br/><form:errors path="ntceEndde" />
						                
						            </td>
						          </tr>     
						          </c:when>
						        <c:otherwise>
						        
						        </c:otherwise>
						    </c:choose>
						
					        <c:if test="${bdMstr.fileAtchPosblAt == 'Y'}">          
						      <tr>
						        <th height="23"><label for="egovComFileUploader"><spring:message code="cop.atchFile" /></label></th>
						        <td colspan="3">
						                    <input name="file_1" id="egovComFileUploader" type="file" />
						                        <div id="egovComFileList"></div>
						        </td>
						      </tr>
					      
					      </c:if>
					    </table>
                    </div>
 
                    <!-- 버튼 시작(상세지정 style로 div에 지정) -->
                    <div class="buttons" style="padding-top:10px;padding-bottom:10px;width: 120px;" >
                        <!-- 목록/저장버튼  -->
                        <table border="0" cellspacing="0" cellpadding="0" align="center">
                            <tr>
						      <c:if test="${bdMstr.authFlag == 'Y'}">
						          <td class="button">
						             <a href="#LINK" onclick="javascript:fn_egov_regist_notice(); return false;"><spring:message code="button.save" /></a> 
						          </td>
						          <td width="10"></td>
						      </c:if>
						      <td class="button">
						          <a href="#LINK" onclick="javascript:fn_egov_select_noticeList(); return fasle;"><spring:message code="button.list" /></a> 
						      </td>
                            </tr>   
                        </table>
                    </div>
                    <!-- 버튼 끝 -->                           
                </form:form>

     
       
    </div>

	
    </div>
</div>
<c:if test="${bdMstr.fileAtchPosblAt == 'Y'}">          

<script type="text/javascript">
var maxFileNum = document.board.posblAtchFileNumber.value;
if(maxFileNum==null || maxFileNum==""){
    maxFileNum = 3;
} 
var multi_selector = new MultiSelector( document.getElementById( 'egovComFileList' ), maxFileNum );
multi_selector.addElement( document.getElementById( 'egovComFileUploader' ) );         
</script>    

</c:if>
</body>
</html>

