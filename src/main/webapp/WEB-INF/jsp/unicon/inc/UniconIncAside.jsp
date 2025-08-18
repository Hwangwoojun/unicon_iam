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
<div class="svisual g${gNum}">
	<div class="tit">${gName}</div>
	<div class="location"><i></i><em></em><span>${gName}</span><em></em><strong>${sName}</strong>
	</div>
	<div class="aside">
		<dl class="g">
			<dt>${gName}</dt>
			<dd>
				<a href="/kr/about/assignment" class="<c:if test="${gNum == '01'}"> on </c:if>">About GIAM</a>
				<a href="/kr/research/steel" class="<c:if test="${gNum == '02'}"> on </c:if>">Research</a>
				<a href="/kr/database/steel" class="<c:if test="${gNum == '03'}"> on </c:if>">Database</a>
				<a href="/kr/partnership/partnership" class="<c:if test="${gNum == '04'}"> on </c:if>">Achievements</a>
				<a href="/kr/publication/publication" class="<c:if test="${gNum == '05'}"> on </c:if>">Publication</a>
				<a href="/kr/news/news" class="<c:if test="${gNum == '06'}"> on </c:if>">News</a>
			</dd>
		</dl>
		<dl class="s">
			<dt>${sName}</dt>
			<dd>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<dd>
			    <c:choose>
			        <c:when test="${gNum == '01'}">
			            <a href="/kr/about/assignment" class="${sNum == '01' ? 'on' : ''}">과제 소개</a>
			            <a href="/kr/about/greetings" class="${sNum == '02' ? 'on' : ''}">인사말</a>
			            <a href="/kr/about/researcher" class="${sNum == '03' ? 'on' : ''}">연구진 소개</a>
			            <a href="/kr/about/location" class="${sNum == '04' ? 'on' : ''}">오시는 길</a>
			        </c:when>
			        <c:when test="${gNum == '02'}">
			            <a href="/kr/research/steel" class="${sNum == '01' ? 'on' : ''}">철강</a>
			            <a href="/kr/research/transport" class="${sNum == '02' ? 'on' : ''}">수송</a>
			            <a href="/kr/research/electricity" class="${sNum == '03' ? 'on' : ''}">전력</a>
			            <a href="/kr/research/building" class="${sNum == '04' ? 'on' : ''}">건물</a>
			            <a href="/kr/research/forest" class="${sNum == '05' ? 'on' : ''}">산림</a>
			        </c:when>
			        <c:when test="${gNum == '03'}">
			            <a href="/kr/database/steel" class="${sNum == '01' ? 'on' : ''}">철강</a>
			            <a href="/kr/database/transport" class="${sNum == '02' ? 'on' : ''}">수송</a>
			            <a href="/kr/database/electricity" class="${sNum == '03' ? 'on' : ''}">전력</a>
			            <a href="/kr/database/building" class="${sNum == '04' ? 'on' : ''}">건물</a>
			            <a href="/kr/database/forest" class="${sNum == '05' ? 'on' : ''}">산림</a>
			        </c:when>
			        <c:when test="${gNum == '04'}">
						<a href="/kr/partnership/partnership?year=2025" class="${sNum == '2025' ? 'on' : ''}">2025</a>
			            <a href="/kr/partnership/partnership?year=2024" class="${sNum == '2024' ? 'on' : ''}">2024</a>
			            <a href="/kr/partnership/partnership?year=2023" class="${sNum == '2023' ? 'on' : ''}">2023</a>
			            <a href="/kr/partnership/partnership?year=2022" class="${sNum == '2022' ? 'on' : ''}">2022</a>
			        </c:when>
			    </c:choose>
			</dd>
		</dl>
	</div>
</div>