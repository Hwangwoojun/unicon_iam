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

	
	<div class="inner">
		<ul class="researcher_list">
			 <li>
				<a href="/kr/about/researcher_view?id=jungTY">
					<div class="img"><img src="/images/unicon/img_researcher01.jpg" alt="image"></div>
					<div class="name"><strong>정태용</strong>교수</div>
					<p>협력, 정책 시나리오, UI/DB, <br class="pc_vw">탄소 포집(산림), 기후 모듈</p>
				</a>
			</li>
			<li>
				<a href="/kr/about/researcher_view?id=kimYG">
					<div class="img"><img src="/images/unicon/img_researcher02.jpg" alt="image"></div>
					<div class="name"><strong>김용건</strong>교수</div>
					<p>CGE 모델, 전력 DB, 전력 모델, <br class="pc_vw">한국형 GHG 및 에너지 IA 모델</p>
				</a>
			</li>
			<li>
				<a href="/kr/about/researcher_view?id=kooYM">
					<div class="img"><img src="/images/unicon/img_researcher03.jpg" alt="image"></div>
					<div class="name"><strong>구윤모</strong>교수</div>
					<p>산업 DB, 기술 DB, 기술전망, <br class="pc_vw">전력 및 수송부문</p>
				</a>
			</li>
			<li>
				<a href="/kr/about/researcher_view?id=ahnYH">
					<div class="img"><img src="/images/unicon/img_researcher04.jpg" alt="image"></div>
					<div class="name"><strong>안영환</strong>교수</div>
					<p>정량적 분석, 운송 DB, 운송 모델</p>
				</a>
			</li>
			<li>
				<a href="/kr/about/researcher_view?id=jangH">
					<div class="img"><img src="/images/unicon/img_researcher05.png" alt="image"></div>
					<div class="name"><strong>장 훈</strong>박사</div>
					<p>도시계획, 공간계획, GCF, 기후변화, SDGs, 개도국</p>
				</a>
			</li>
		</ul>

	</div>
</div>
</body>
</html>

