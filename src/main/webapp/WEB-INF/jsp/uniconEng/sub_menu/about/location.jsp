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
		<div class="hover_txt" style="transition: all 0.2s linear 0s;"><p>Press Ctrl to zoom or move the map, scroll and drag.</p></div>
	</div>
	
	
	
	<div class="map_text">
		<div class="inner">
			<div class="locat">50 Yonsei-ro, Seodaemun-gu, Seoul, <br class="mo_vw">New Millennium Hall, Yonsei University</div>
			<ul class="door">
				<li class="i1">
					<div class="tt">Main Gate (Front Gate)</div>
					<p><br class="pc_vw">If you follow the arrow on the map at the main gate, go straight at the main gate, turn right, and follow the road to see the building.</p>
				</li>
				<li class="i2">
					<div class="tt">East Gate</div>
					<p><br class="pc_vw">If you go up the hill from the east gate, there is an international dormitory on the left and the school building.<br>You can use the stairs to go down to the main entrance.</p>
				</li>
			</ul>
			<div class="train">
				<div class="box i1">
					<div class="tit">Subway</div>
					<ul class="con">
						<li class="line3"><span>Line 3</span>Free shuttle bus at Gyeongbokgung Station: Please refer to the Yonsei Free Shuttle Bus Route & Time section.
							<!-- <a href="#" class="btn_shuttle">Check the shuttle bus</a> -->
						</li>
						<li class="line2"><span>Line 2</span>When you get out of exit 3 of the Sinchon Station subway, go straight about 100 meters until you see the Yonsei-ro Station (Yeonhae-ro Munhak Street Station). If you take the bus 7024 (every 12-15 minutes), get off at the third stop, cross the street across from Ewha Girls' Middle School (Idaebu Middle School), walk two blocks to the right when you arrive on the sidewalk across from there, and turn right at Strawberry Valley Snack Restaurant Street (New Millennium Hall) and there is New Millennium Hall (New Millennium Hall) on the top of the hill on the right. Yonsei GSIS Administration Office is located in Room 510.</li>
					</ul>
				</div>
				<div class="box i2">
					<div class="tit">Airport Transportation</div>
					<ul class="con">
						<li class="taxi"><span>Taxi</span>Taxi to and from Incheon Airport can be used all day, but the fare is between 50,000 won and 70,000 won.</li>
						<li class="bus"><span>Bus</span>You can arrive at Yonsei University from Incheon International Airport using airport bus #6011.<br>
							NMH and International Student Dormitory (SK Global House & International House) are located closest to Ewha Womans University's back gate (Eye University rear gate/Eye University rear gate), and if you cross the street toward Coffee Bean from the stop and walk straight to the right, you will arrive at Paris Baguette.<br>
							On the right are the NMH building and the International dormitory. You can see it before you arrive at the security office on the street corner.
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
	
	
	var imageSrc = '/images/unicon/icon_map_point_eng.svg'; // 마커이미지의 주소입니다
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

