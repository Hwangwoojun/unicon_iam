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
		<div class="greetings_area1">"탄소중립 이행을 위한 글로벌 통합평가모형 개발"<br>연세대학교, 한국환경연구원, 서울대학교, 숙명여자대학교가 함께합니다.</div>
		<div class="uni_list">
			<div class="box">
				<div class="logo"><img src="/images/unicon/img_subuni.svg" alt="image"></div>
				<div class="cont">
					<div class="coming">
						기후변화 대응은 전 지구적 차원의 협력과 과학적 근거에 기반한 정책 결정을 요구하는 중대한 과제입니다.
						파리협정 체제 아래 각국은 국가결정기여(Nationally Determined Contributions: NDCs)를 통해 자발적인 감축 목표를 설정하고,
						이를 주기적으로 점검하는 글로벌 이행점검, 국제탄소시장 등의 메커니즘에 따라 탄소중립 이행의 신뢰성과 투명성을 확보하고자 노력하고 있습니다.
						<br><br>
						온실가스 감축 효과를 체계적으로 평가하고 정책적 시사점을 도출하기 위해서는 정교하고 통합적인 분석 도구가 필수적입니다.
						기존의 상향식(bottom-up) 또는 하향식(top-down) 모형은 각각의 장점을 지니는 반면, 상호연계성이 부족하여 통합적 정책 분석에 한계점 또한 존재합니다.
						<br><br>
						UNICON 프로젝트는 상향식 부문모델과 하향식 경제모델을 연계한 글로벌 통합모형 개발을 목표로 출범하였습니다.
						본 프로젝트는 기술 변화 및 확산, 감축 경로 분석 등에 부문별 정교성을 반영한 경제성 분석을 가능하게 함으로써,
						탄소중립 이행의 실현 가능성과 정책 효과성을 뒷받침하는 과학적 근거를 제공하고자 합니다.
						<br><br>
						탄소중립 사회로 나아가는 여정에 UNICON 프로젝트가 실질적인 기여를 할 수 있도록 지속적인 협력과 소통을 이어가겠습니다.
						많은 관심과 성원 부탁드립니다.
						<br><br>
						감사합니다.
					</div>
				</div>
			</div>
		</div>
	</div>
</div>	
</script>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

