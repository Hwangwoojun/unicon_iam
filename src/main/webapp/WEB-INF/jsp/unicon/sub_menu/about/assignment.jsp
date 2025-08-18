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
	
	<div class="assignment_area1">
		<div class="inner">
			<div class="img"><img src="/images/unicon/img_assignment_area1.jpg" alt="image"></div>
			<div class="txt">
				<div class="tit"><strong class="jakarta">UNICON</strong>은 탄소중립의 효과적 이행을 위한 <br class="pc_vw">글로벌 통합모형 개발 프로젝트입니다. </div>
				<p>
					파리협정에 따른 신기후체제 출범에 따라 국가 결정기여(Nationally Determined Contributions, NDC) 기반의 감축목표 설정과 투명성에 기반한 전 지구적 이행점검(Global Stocktake, GST) 및 국제탄소시장 매커니즘 (International Market Mechanism, IMM) 도입 등에 대응하기 위한 글로벌 수준의 감축·통합평가 모형의 개발 및 활용의 필요성이 요구되었습니다.<br>
					<br>
					또한 온실가스 감축 시스템 분석에는 상향식(bottom-up) 및 하향식(top-down) 모형이 활용되고 있으나, <br class="pc_vw">각 모형은 특성에 따라 장단점을 보유하고 있어 이를 보완할 수 있는 통합 모형이 필요합니다. <br>
					<br>
					이에 본 프로젝트에서는 상하향 연계의 글로벌 통합모형을 연구하여 주요 감축기술의 변화 및 확산에 대한 다양한 실증 분석과 함께 국제 온실가스 감축 목표 협의에 효율적으로 대응하고자 합니다. 
				</p>
			</div>
		</div>
	</div>
	
	<div class="assignment_area2">
		<div class="inner">
			<div class="dtit">기대효과</div>
			<div class="tb">UNICON 프로젝트는 과학·기술, 경제·사회, <br class="mo_vw">사회적·환경의 측면에서 의의를 가집니다.</div>
			<ul>
				<li>
					<div class="num">01</div>
					<div class="tit">과학·기술</div>
					<p>- 상·하향식 모듈이 결합된 글로벌 통합모형 구축을 통한 잠재적 온실가스 감축량 예측 수준 및 정책 평가의 정확성 제고</p>
					<p>- 글로벌 온실가스, 에너지 기술, 경제 통합 DB 및 통합모형 구축을 통한 파생 연구 활성</p>
					<i><img src="/images/unicon/img_assignment_area2_01.jpg" alt="image"></i>
				</li>
				<li>
					<div class="num">02</div>
					<div class="tit">경제·사회</div>
					<p>- 온실가스 배출권 거래제 및 국제 탄소시장 연계 활성화</p>
					<p>- 글로벌 온실가스 감축량 예측 기능이 향상됨에 따라 온실가스 감축목표 분석의 정확성 및 감축정책의 효율성 제고</p>
					<p>- 글로벌 다지역 상하향 통합모형 보완 및 활용, 통합모형 UI 관리 관련 인력 양성</p>
					<p>- 국제 탄소시장, 탄소국경세 등 글로벌 기후변화 정책에 따른 국내 경제에 미치는 영향 파악 및 대응 정책 수립에 활용</p>
					<p>- 온실가스종합정보센터, 탄소중립위원회 등 관련 기관에 필요한 정보를 제공함으로써 기후변화 및 탄소중립 정책  수립에 기여</p>
					<i><img src="/images/unicon/img_assignment_area2_02.jpg" alt="image"></i>
				</li>
				<li>
					<div class="num">03</div>
					<div class="tit">사회적·환경</div>
					<p>- 글로벌 온실가스 감축량 예측 기능이 향상됨에 따라 보다 정확한 환경적 측면에서의 영향 예측 가능</p>
					<p>- 일반 대중 및 언론의 기후변화 및 탄소중립에 대한 관심 증대 기대</p>
					<i><img src="/images/unicon/img_assignment_area2_03.jpg" alt="image"></i>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="assignment_area3">
		<div class="inner">
			<div class="dtit">Framework</div>
			<div class="glbox mo_scroll_wrap">
				<div class="point" id="point1"></div>
				<div class="mo_scroll">
					<img src="/images/unicon/img_assignment_area3.svg" alt="글로벌 감축 통합평가 모형 개발 표">
				</div>
			</div>
		</div>
	</div>

</div> <!-- //container -->

<script type="text/javascript">
//<![CDATA[
$(document).ready (function () {
	$(window).scroll(function () {
		if ($(window).scrollTop() > $("#point1").offset().top) {
		  $('.mo_scroll_wrap').addClass("on");
		}
	});
});
//]]>
</script>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

