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
<div class="aside">
	<a href="javascript:void(0);" class="btn_aside"></a>
	<div class="in_scroll">
		<div class="menu">			
			<dl class="on">
				<dt>기본설정 <i></i></dt>
				<dd style="display:block;"><!-- 열려있는 페이지에는 dd에 display:block 해주세요. -->
					<a class="<?=$leftMenuClass[0]?>" href="/backoffice/module/admin/admin.php">· 관리자 관리</a>
					<a class="<?=$leftMenuClass[1]?>" href="/backoffice/module/board/board_view.php?boardid=researcher">· 참여 연구원 관리</a>
					<a class="<?=$leftMenuClass[2]?>" href="/backoffice/module/admin/admin_set.php">· 기본정보 설정</a>
				</dd>
			</dl>			
		</div>
		<jsp:include page="../../backoffice/admin/admin_info.jsp" flush="true"/>
	</div>
</div>
<script type="text/javascript">
<!--
/*
$(document).ready(function(){
	$(".aside .btn_aside").click(function(){
		if($(".aside").hasClass("opcl") === true) {
			alert('class가 존재함.');
		} else {
			alert('class가 존재하지 않음');
		}
		//$(".aside").stop(false,true).toggleClass("opcl");
		//$(".container").stop(false,true).toggleClass("full");
	});
});
*/
//-->
</script>