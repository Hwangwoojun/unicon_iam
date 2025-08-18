<%--
  Class Name : EgovIncFooter.jsp
  Description : 화면하단 Footer(include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    
<a href="javascript:void(0);" class="gotop">TOP</a>
<div class="footer">
	<div class="inner">
		<a href="https://gsis.yonsei.ac.kr/gsis/index.do" target="_blank"><div class="logo"><img src="/images/unicon/flogo.svg" alt="logo"><p>Graduate School of International Studies</p></div></a>
		<div class="address">New Millennium Hall #510, Yonsei University, 50 Yonsei-ro, Seodaemun-gu, Seoul, Korea</div>
		<p class="copy">COPYRIGHT 2023 YONSEI UNIV. ALL RIGHTS RESERVED.</p>
	</div>
</div>

<div class="ie_wrap">
	<div class="outbox">
		<div class="inbox">
			<p>현재 브라우저에서는 지원하지 않는 사이트입니다. 아래의 다른 브라우저를 다운받아 사용해주세요.</p>
			<div class="link">
				<a href="https://www.google.com/intl/ko/chrome/" target="_blank"><i class="fa-brands fa-chrome"></i>크롬</a>
				<a href="https://www.microsoft.com/ko-kr/edge" target="_blank"><i class="fa-brands fa-edge"></i>엣지</a>
				<a href="https://www.mozilla.org/ko/firefox/new/" target="_blank"><i class="fa-brands fa-firefox"></i>파이어폭스</a>
				<a href="https://support.apple.com/ko_KR/downloads/safari" target="_blank"><i class="fa-brands fa-safari"></i>사파리</a>
			</div>
		</div>
	</div>
</div>

<script>
	 const userAgent = navigator.userAgent.toLowerCase();
     let browserName;

     if (userAgent.indexOf("edge") > -1) {
         browserName = "MS Edge";
     } else if (userAgent.indexOf("edg/") > -1) {
         browserName = "Edge (Chromium based)";
     } else if (userAgent.indexOf("opr") > -1 && !!window.opr) {
         browserName = "Opera";
     } else if (userAgent.indexOf("chrome") > -1 && !!window.chrome) {
         browserName = "Chrome";
     } else if (userAgent.indexOf("trident") > -1) {
         browserName = "MS IE";
     } else if (userAgent.indexOf("firefox") > -1) {
         browserName = "Mozilla Firefox";
     } else if (userAgent.indexOf("safari") > -1) {
         browserName = "Safari";
     } else {
         browserName = "Other";
         $('.ie_wrap').css('display', 'block'); 
     }
    </script>