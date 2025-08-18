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
			<a href="/kr/about/assignment" class="pc_vw"><span>About UNICON</span></a>
			<a href="javascript:void(0);" class="mo_vw">About UNICON</a>
			<div class="snb">
				<a href="/kr/about/assignment" class="<c:if test="${gNum == '01' && sNum == '01'}"> on </c:if>">과제 소개</a>
				<a href="/kr/about/greetings" class="<c:if test="${gNum == '01' && sNum == '02'}"> on </c:if>">인사말</a>
				<a href="/kr/about/researcher" class="<c:if test="${gNum == '01' && sNum == '03'}"> on </c:if>">연구진 소개</a>
				<a href="/kr/about/location" class="<c:if test="${gNum == '01' && sNum == '04'}"> on </c:if>">오시는 길</a>
			</div>
		</div>
		<div class="menu <c:if test="${gNum == '02'}">on</c:if>">
			<a href="/kr/research/steel" class="pc_vw"><span>Research</span></a>
			<a href="javascript:void(0);" class="mo_vw">Research</a>
			<div class="snb">
				<a href="/kr/research/steel" class="<c:if test="${gNum == '02' && sNum == '01'}"> on </c:if>">철강</a>
				<a href="/kr/research/transport" class="<c:if test="${gNum == '02' && sNum == '02'}"> on </c:if>">수송</a>
				<a href="/kr/research/electricity" class="<c:if test="${gNum == '02' && sNum == '03'}"> on </c:if>">전력</a>
				<a href="/kr/research/building" class="<c:if test="${gNum == '02' && sNum == '04'}"> on </c:if>">건물</a>
				<a href="/kr/research/forest" class="<c:if test="${gNum == '02' && sNum == '05'}"> on </c:if>">산림</a>
			</div>
		</div>
		<div class="menu <c:if test="${gNum == '03'}">on</c:if>">
			<a href="/kr/database/steel" class="pc_vw"><span>Database</span></a>
			<a href="javascript:void(0);" class="mo_vw">Database</a>
			<div class="snb">
				<a href="/kr/database/steel" class="<c:if test="${gNum == '03' && sNum == '01'}"> on </c:if>">철강</a>
				<a href="/kr/database/transport" class="<c:if test="${gNum == '03' && sNum == '02'}"> on </c:if>">수송</a>
				<a href="/kr/database/electricity" class="<c:if test="${gNum == '03' && sNum == '03'}"> on </c:if>">전력</a>
				<a href="/kr/database/building" class="<c:if test="${gNum == '03' && sNum == '04'}"> on </c:if>">건물</a>
				<a href="/kr/database/forest" class="<c:if test="${gNum == '03' && sNum == '05'}"> on </c:if>">산림</a>
			</div>
		</div>
		<div class="menu <c:if test="${gNum == '04'}">on</c:if>">
			<a href="/kr/partnership/partnership" class="pc_vw"><span>Achievements</span></a>
			<a href="javascript:void(0);" class="mo_vw">Achievements</a>
			<div class="snb">
				<a href="/kr/partnership/partnership?year=2024" class="<c:if test="${gNum == '04' && sNum == '2024'}"> on </c:if>">2024</a>
				<a href="/kr/partnership/partnership?year=2023" class="<c:if test="${gNum == '04' && sNum == '2024'}"> on </c:if>">2023</a>
				<a href="/kr/partnership/partnership?year=2022" class="<c:if test="${gNum == '04' && sNum == '2022'}"> on </c:if>">2022</a>
			</div>
		</div>
		<div class="menu <c:if test="${gNum == '05'}">on</c:if>"><a href="/kr/publication/publication"><span>Publication</span></a></div>
		<div class="menu <c:if test="${gNum == '06'}">on</c:if>"><a href="/kr/news/news"><span>News</span></a></div>
	</div>
	<div class="langs">
		<a href="/" class="on">KOR</a>
		<a href="/eng/mainUnicon">ENG</a>
	</div>
</div>