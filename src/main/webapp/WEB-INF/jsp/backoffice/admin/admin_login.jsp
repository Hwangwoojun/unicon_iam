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

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<meta http-equiv="content-language" content="ko">
<jsp:include page="../inc/dtd.jsp" flush="true"/>

<script language="JavaScript">

<!--
function actionLogin() {

    if (document.loginForm.id.value =="") {
        alert("아이디를 입력하세요");
        return false;
    } else if (document.loginForm.password.value =="") {
        alert("비밀번호를 입력하세요");
        return false;
    } else {
        document.loginForm.action="<c:url value='/uat/uia/actionLogin.do'/>";
        //document.loginForm.j_username.value = document.loginForm.userSe.value + document.loginForm.username.value;
        //document.loginForm.action="<c:url value='/j_spring_security_check'/>";
        document.loginForm.submit();
    }
}

function setCookie (name, value, expires) {
    document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
}

function getCookie(Name) {
    var search = Name + "="
    if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
        offset = document.cookie.indexOf(search)
        if (offset != -1) { // 쿠키가 존재하면
            offset += search.length
            // set index of beginning of value
            end = document.cookie.indexOf(";", offset)
            // 쿠키 값의 마지막 위치 인덱스 번호 설정
            if (end == -1)
                end = document.cookie.length
            return unescape(document.cookie.substring(offset, end))
        }
    }
    return "";
}

function saveid(form) {
    var expdate = new Date();
    // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
    if (form.checkId.checked)
        expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
    else
        expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
    setCookie("saveid", form.id.value, expdate);
}

function getid(form) {
    form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
}

function fnInit() {
    var message = document.loginForm.message.value;
    if (message != "") {
        alert(message);
    }
    getid(document.loginForm);
}
//-->

$(document).ready(function(){
	$("#id").keyup(function(event) {
		if (event.which == 13) {
			checkLogin(document.loginForm);
		}
	});
	$("#pw").keyup(function(event) {
		if (event.which == 13) {
			checkLogin(document.loginForm);
		}
	});
});

function checkLogin(f) { //입력값 검사
	if (!f.ID.value) {
		alert("ID를 입력하여 주십시요."); f.ID.focus(); return ;
	}
	if (!f.Password.value) {
		alert("비밀번호를 입력하여 주십시요."); f.Password.focus(); return ;
	}
	f.submit();
}
</script>
</head>

<body  onload="fnInit();">
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<!-- 전체 레이어 시작 -->

<%-- <jsp:include page="../../backoffice/inc/aside.jsp" flush="true"/> --%>
<div class="login_wrap">

	<form:form name="loginForm" method="post" action="#LINK">
		<input type="hidden" name="evnMode" value="Login">
		<input type='hidden' name='Prev_URL' value='<?=$Prev_URL?>'>
		<div class="login_inbox">
			<div class="title noto">ADMIN LOGIN<div class="kor">관리자로그인</div></div>
			<div class="inputs">
				<input type="text" class="text" placeholder="아이디" id="id" name="id" maxlength="15">
				<input type="password" class="text" placeholder="패스워드" id="password" name="Password" maxlength="15" onkeydown="javascript:if (event.keyCode == 13) { actionLogin(); }">
				<button type="button" class="btn" onclick="javascript:actionLogin()" >로그인</button>
			</div>
			<div class="btm_txt">※ 관리자 페이지로 접속합니다.<br/>※ 공공장소에서의 로그인시 정보 유출에 주의하시기 바랍니다.</div>
		</div>
		
		<input type="hidden" name="message" value="${message}" />
		<input type="hidden" name="userSe"  value="USR"/>
	 </form:form>
	
	
</div>

<script language="javascript">
document.loginForm.id.focus();
</script>
</body>
</html>

