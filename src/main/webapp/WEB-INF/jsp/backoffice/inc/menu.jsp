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
	
	<div class="in_scroll">
		<div class="menu">			
			<%-- <dl class="on">
				<dt>Research <i></i></dt>
				<dd style="display:block;"><!-- 열려있는 페이지에는 dd에 display:block 해주세요. -->
					<a class="<?=$leftMenuClass[0]?>" href="/backoffice/module/admin/admin.php">· 철강</a>
					<a class="<?=$leftMenuClass[1]?>" href="/backoffice/module/board/board_view.php?boardid=researcher">· 수송</a>
					<a class="<?=$leftMenuClass[2]?>" href="/backoffice/module/admin/admin_set.php">· 전력</a>
					<a class="<?=$leftMenuClass[3]?>" href="/backoffice/module/admin/admin_set.php">· 건물</a>
					<a class="<?=$leftMenuClass[4]?>" href="/backoffice/module/admin/admin_set.php">· 산림</a>
				</dd>
			</dl>
			<dl class="">
				<dt>Database <i></i></dt>
				<dd style="display:none;"><!-- 열려있는 페이지에는 dd에 display:block 해주세요. -->
					<a class="<?=$leftMenuClass[0]?>" href="/backoffice/module/admin/admin.php">· 철강</a>
					<a class="<?=$leftMenuClass[1]?>" href="/backoffice/module/board/board_view.php?boardid=researcher">· 수송</a>
					<a class="<?=$leftMenuClass[2]?>" href="/backoffice/module/admin/admin_set.php">· 전력</a>
					<a class="<?=$leftMenuClass[3]?>" href="/backoffice/module/admin/admin_set.php">· 건물</a>
					<a class="<?=$leftMenuClass[4]?>" href="/backoffice/module/admin/admin_set.php">· 산림</a>
				</dd>
			</dl>	 
			<dl class="on">
				<dt>Achievements <i></i></dt>
				<dd style="display:block;"><!-- 열려있는 페이지에는 dd에 display:block 해주세요. -->
					<a class="" href="#LINK" onclick="javascript:changeSrc('Achievements_Inter'); return false;">· 국제 워크샵</a>
					<a class="" href="#LINK" onclick="javascript:changeSrc('Achievements_Dom'); return false;">· 국내 및 해외 학술</a>
					<a class="" href="#LINK" onclick="javascript:changeSrc('Achievements_MoU'); return false;">· MoU</a>
				</dd>
			</dl>	--%>
			<dl class="on">
				<dt>Publication <i></i></dt>
				<dd style="display:block;"><!-- 열려있는 페이지에는 dd에 display:block 해주세요. -->
					<a class="" href="#LINK" onclick="javascript:changeSrc('Publication'); return false;">· Publication</a>
					
				</dd>
			</dl>
			<dl class="">
				<dt>NEWS <i></i></dt>
				<dd style="display:none;"><!-- 열려있는 페이지에는 dd에 display:block 해주세요. -->
					<a class="" href="#LINK" onclick="javascript:changeSrc('News'); return false;">· NEWS</a>

				</dd>
			</dl>		
						
		</div>
	</div>
</div>
<script type="text/javascript">
<!--

$(document).ready(function(){
	$(".aside .btn_aside").click(function(){
		if($(".aside").hasClass("opcl") === true) {
		//	alert('class가 존재함.');
		} else {
		//	alert('class가 존재하지 않음');
		}
		//$(".aside").stop(false,true).toggleClass("opcl");
		//$(".container").stop(false,true).toggleClass("full");
	});
});

//-->


	function changeSrc(bbsId) {
		var iframe = document.getElementById("tcounter");
		iframe.src = "/cop/bbs/selectBoardList.do?bbsId="+bbsId;
	}
</script>