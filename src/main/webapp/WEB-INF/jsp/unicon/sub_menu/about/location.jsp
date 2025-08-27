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
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5c52c098a8079ad42fdd4287ff710f11&libraries=services,clusterer,drawing"></script>
	<div class="map_area" id="map">
		<div class="hover_txt" style="transition: all 0.2s linear 0s;"><p>지도를 확대/축소, 이동 하려면 Ctrl키를 누르고 스크롤, 드래그 해주세요.</p></div>
	</div>
	
	
	
	<div class="map_text">
		<div class="inner">
			<div class="locat">서울시 서대문구 연세로 50 <br class="mo_vw">연세대학교 새천년관</div>
			<ul class="door">
				<li class="i1">
					<div class="tt">정문</div>
					<p>주 게이트(정문)에서 지도의 화살표를 따라가면 <br class="pc_vw">정문에서 직진한 후 우회전하여 길을 따라가면 건물이 보입니다.</p>
				</li>
				<li class="i2">
					<div class="tt">동문</div>
					<p>동문에서 언덕길을 따라 올라가면 <br class="pc_vw">왼쪽에 국제 기숙사가 있고 학교 건물이 있습니다.<br>계단을 이용해서 정문으로 내려가시면 됩니다.</p>
				</li>
			</ul>
			<div class="train">
				<div class="box i1">
					<div class="tit">지하철</div>
					<ul class="con">
						<li class="line3"><span>3호선</span>경복궁역에서 무료 셔틀버스 : 연세 무료 셔틀버스 노선 & 시간 부분을 참고하시기 바랍니다.
							<a target="_blank" href="https://www.yonsei.ac.kr/sc/363/subview.do" class="btn_shuttle">셔틀버스 확인하기</a>
						</li>
						<li class="line2"><span>2호선</span>신촌역 지하철 3번 출구로 나오면 연세로 정류장(연세로 문학의거리 정류장) 표지판이 보일 때까지 약 100미터 직진하시면 됩니다.  정류장에서 7024번(12분~15분 간격) 버스를 타시면 세 번째 정류장에서 내리시고, 이화여자중학교(이대부중)에서 내리시면 내리신 맞은편으로 길을 건너셔서 맞은편 인도에 도착하시면 오른쪽으로 두 블록 걸으신 후, 딸기골 분식 식당가 딸기타운(새천년관)에서 오른쪽으로 꺾으시면 오른쪽 언덕 꼭대기에 새천년관(새천년관)이 있습니다. 연세GSIS 행정실은 510호실에 있습니다.</li>
					</ul>
				</div>
				<div class="box i2">
					<div class="tit">공항교통</div>
					<ul class="con">
						<li class="taxi"><span>택시</span>인천공항을 오가는 택시는 하루 종일 이용할 수 있지만 요금은 5만 원에서 7만 원 정도입니다.</li>
						<li class="bus"><span>버스</span>인천국제공항에서 공항버스#6011번을 이용하여 연세대학교에 도착하실 수 있습니다.<br>
							이화여대 후문( 이대후문/이대후문)에서 가장 가까운 곳에 NMH와 유학생 기숙사(SK글로벌하우스&인턴하우스)가 위치해 있으며, 정류장에서 커피빈 방향으로 길을 건너 오른쪽으로 쭉 걸어가시면 파리바게뜨에 도착합니다.<br>
							오른쪽에 NMH빌딩과 국제기숙사가 있습니다. 길모퉁이에 있는 경비실에 도착하기 전에 보실 수 있습니다.
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>	



<script type="text/javascript">
//<![CDATA[
$(document).ready (function () {
	
	function isMobileDevice() {
		return window.innerWidth <= 767;
	}

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = { 
			center: new kakao.maps.LatLng(37.56633044524499, 126.94321832828521), // 지도의 중심좌표
			level: 2 // 지도의 확대 레벨
		};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	
	var imageSrc = '/images/unicon/icon_map_point_kr.svg'; // 마커이미지의 주소입니다
	if (isMobileDevice()) {
		var imageSize = new kakao.maps.Size(220, 69); // 마커이미지의 크기입니다
		var imageOption = {offset: new kakao.maps.Point(110, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	}else{
		var imageSize = new kakao.maps.Size(294, 92); // 마커이미지의 크기입니다
		var imageOption = {offset: new kakao.maps.Point(147, 92)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	}
	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		markerPosition = new kakao.maps.LatLng(37.56633044524499, 126.94321832828521); // 마커가 표시될 위치입니다
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
		position: markerPosition, 
		image: markerImage // 마커이미지 설정 
	});
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);

	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	
// 스크롤시 지도 잠시만 줌인아웃 안되도록
	var map_scroll = 0;
	$(window).scroll(function(){
		var currentPos = $(this).scrollTop();
		if (currentPos > map_scroll) {
			if($(window).scrollTop() >= 200) {
				$(".map").addClass("on");
				setTimeout(function(){
					$(".map").removeClass("on");
				},2000);
		}
		} else {
			$(".map").addClass("on");
			setTimeout(function(){
				$(".map").removeClass("on");
			},2000);
		}
		map_scroll = currentPos;
	});
// 위는 반응형에서도 써야하므로 유지, 아래는 마우스 환경에서 (1024 이상) 설정
	$(document).on('keydown', function(event) {
		if (event.ctrlKey) {
			$(".hover_txt").fadeOut("fast").css('transition','.2s linear');
		}
	});
	$(document).on('keyup', function(event) {
		if (!event.ctrlKey) {
			$(".hover_txt").fadeIn("fast").css('transition','0s');
			setTimeout(function(){
				$(".hover_txt").css('transition','.2s linear');
			},1000);
		}
	});
});
//]]>

</script>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

