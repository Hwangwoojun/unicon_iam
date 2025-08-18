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
<div class="header <c:if test="${gNum == 'main'}">main</c:if>">
	<a href="/" class="logo"><h1>UNICON</h1></a>
	<a href="javascript:void(0);" class="btn_menu">
		<p class="t"></p>
		<p class="m"></p>
		<p class="b"></p>
	</a>
	<div class="gnb">
		<div class="menu <c:if test="${gNum == '01'}">on</c:if>">
			<a href="/eng/about/assignment" class="pc_vw"><span>About UNICON</span></a>
			<a href="javascript:void(0);" class="mo_vw">About UNICON</a>
			<div class="snb">
				<a href="/eng/about/assignment" class="<c:if test="${gNum == '01' && sNum == '01'}"> on </c:if>">About Project</a>
				<a href="/eng/about/greetings" class="<c:if test="${gNum == '01' && sNum == '02'}"> on </c:if>">Greetings</a>
				<a href="/eng/about/eng/researcher" class="<c:if test="${gNum == '01' && sNum == '03'}"> on </c:if>">Researcher</a>
				<a href="/eng/about/location" class="<c:if test="${gNum == '01' && sNum == '04'}"> on </c:if>">Contact</a>
			</div>
		</div>
		<div class="menu <c:if test="${gNum == '02'}">on</c:if>">
			<a href="/eng/research/steel" class="pc_vw"><span>Research</span></a>
			<a href="javascript:void(0);" class="mo_vw">Research</a>
			<div class="snb">
				<a href="/eng/research/steel" class="<c:if test="${gNum == '02' && sNum == '01'}"> on </c:if>">Steel</a>
				<a href="/eng/research/transport" class="<c:if test="${gNum == '02' && sNum == '02'}"> on </c:if>">Transport</a>
				<a href="/eng/research/electricity" class="<c:if test="${gNum == '02' && sNum == '03'}"> on </c:if>">Electricity</a>
				<a href="/eng/research/building" class="<c:if test="${gNum == '02' && sNum == '04'}"> on </c:if>">Building</a>
				<a href="/eng/research/forest" class="<c:if test="${gNum == '02' && sNum == '05'}"> on </c:if>">Forest</a>
			</div>
		</div>
		<div class="menu <c:if test="${gNum == '03'}">on</c:if>">
			<a href="/eng/database/steel" class="pc_vw"><span>Database</span></a>
			<a href="javascript:void(0);" class="mo_vw">Database</a>
			<div class="snb">
				<a href="/eng/database/steel" class="<c:if test="${gNum == '03' && sNum == '01'}"> on </c:if>">Steel</a>
				<a href="/eng/database/transport" class="<c:if test="${gNum == '03' && sNum == '02'}"> on </c:if>">Transport</a>
				<a href="/eng/database/electricity" class="<c:if test="${gNum == '03' && sNum == '03'}"> on </c:if>">Electricity</a>
				<a href="/eng/database/building" class="<c:if test="${gNum == '03' && sNum == '04'}"> on </c:if>">Building</a>
				<a href="/eng/database/forest" class="<c:if test="${gNum == '03' && sNum == '05'}"> on </c:if>">Forest</a>
			</div>
		</div>
		<div class="menu <c:if test="${gNum == '04'}">on</c:if>">
			<a href="/eng/partnership/partnership" class="pc_vw"><span>Achievements</span></a>
			<a href="javascript:void(0);" class="mo_vw">Achievements</a>
			<div class="snb">
				<a href="/eng/partnership/partnership?year=2024" class="<c:if test="${gNum == '04' && sNum == '2024'}"> on </c:if>">2024</a>
				<a href="/engkr/partnership/partnership?year=2023" class="<c:if test="${gNum == '04' && sNum == '2024'}"> on </c:if>">2023</a>
				<a href="/eng/partnership/partnership?year=2022" class="<c:if test="${gNum == '04' && sNum == '2022'}"> on </c:if>">2022</a>
			</div>
		</div>
		<div class="menu <c:if test="${gNum == '05'}">on</c:if>"><a href="/eng/publication/publication"><span>Publication</span></a></div>
		<div class="menu <c:if test="${gNum == '06'}">on</c:if>"><a href="/eng/news/news"><span>News</span></a></div>
	</div>
	<div class="langs">
		<a href="/" class="">KOR</a>
		<a href="#"class="on">ENG</a>
	</div>
</div>