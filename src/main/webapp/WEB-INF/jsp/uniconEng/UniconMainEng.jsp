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
<jsp:include page="./inc/dtd.jsp" flush="true"/>
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<!-- 전체 레이어 시작 -->
<jsp:include page="./inc/UniconIncHeader.jsp" flush="true"/>


<div id="mainContent">

	<div class="mvisual">
		<div class="txt">
			<div class="inner">
				<div class="tit jakarta">UNIfied Climate Options Nexus <p style="font-size: 40px;">A Global Integrated Assessment Model<p></div>
				<div class="con">UNICON is a global integrated assessment <br>model project aimed at driving an effective <br>transition to carbon neutrality. <a href="/eng/about/assignment" class="poppins">About UNICON</a>
					<div class="bg_video">
						<video loop autoplay muted>
							<source src="/images/unicon/video_mvisual.mp4" type="video/mp4" />
						</video>
					</div>
				</div>
			</div>
		</div>
		<div class="img">
			<div class="inner">
				<div class="scroll jakarta"><span>SCROLL DOWN</span></div>
			</div>
		</div>
	</div>

	<div class="mcon mc01">
		<div class="inner">
			<div class="title">Research</div>
			<ul class="research_list">
				<li class="i1"><div class="area"><span class="num">01.</span><strong>Steel</strong><!--<i>More</i>--></div><a href="/eng/research/steel"></a></li>
				<li class="i2"><div class="area"><span class="num">02.</span><strong>Transport</strong><!--<i>More</i>--></div><a href="/eng/research/transport"></a></li>
				<li class="i3"><div class="area"><span class="num">03.</span><strong>Electricity</strong><!--<i>More</i>--></div><a href="/eng/research/electricity"></a></li>
				<li class="i4"><div class="area"><span class="num">04.</span><strong>Building</strong><!--<i>More</i>--></div><a href="/eng/research/building"></a></li>
				<li class="i5"><div class="area"><span class="num">05.</span><strong>Forest</strong><!--<i>More</i>--></div><a href="/eng/research/forest"></a></li>
			</ul>
		</div>
	</div>

	<div class="mcon mc02">
		<div class="inner">
			<div class="title">Publication <a href="/eng/publication/publication" class="more">More</a></div>
			<ul>
				<c:if test="${arrPublicationList.list.total > 0}">
				    <c:forEach var="i" begin="0" end="${arrPublicationList.list.total - 1}">
				        <c:set var="imgsrc" value="/images/unicon/img_noimage.jpg" />
				        <c:if test="${arrPublicationList.list[i].re_name != ''}">
				            <c:set var="imgsrc" value="/uploaded/board/eng/publication/${arrPublicationList.list[i].re_name}" />
				        </c:if>
				        <!-- Your HTML code here to use imgsrc -->
				    </c:forEach>
				</c:if>
				<li><c:if test="${arrPublicationList.list.total > 0}">
				    <c:forEach var="i" begin="0" end="${arrPublicationList.list.total - 1}">
				        <c:set var="imgsrc" value="/images/unicon/img_noimage.jpg" />
				        <c:if test="${arrPublicationList.list[i].re_name != ''}">
				            <c:set var="imgsrc" value="/uploaded/board/eng/publication/${arrPublicationList.list[i].re_name}" />
				        </c:if>
				        <a href="/eng/publication/publication?boardid=publication&mode=view&idx=${arrPublicationList.list[i].idx}">
				            <i class="imgfit">
				                <img src="${imgsrc}" alt="image">
				            </i>
				            <p>${arrPublicationList.list[i].subject}</p>
				        </a>
				    </c:forEach>
				</c:if>
				<li><a href="/eng/publication/publication_view?no=29"><i class="imgfit"><img src="/images/unicon/uploaded/05_014.png" alt="image"></i><p>Environmental time-of-use scheme: Strategic leveraging of financial and environmental incentives for greener electric vehicle charging</p></a></li>
				<li><a href="/eng/publication/publication_view?no=28"><i class="imgfit"><img src="/images/unicon/uploaded/05_037.png" alt="image"></i><p>Vehicle-to-grid as a competitive alternative to energy storage in a renewable-dominant  power system: An integrated approach considering electric vehicle drivers and power system</p></a></li>
				<li><a href="/eng/publication/publication_view?no=27"><i class="imgfit"><img src="/images/unicon/uploaded/05_036.png" alt="image"></i><p>Forecasting of changes in electricity consumption due to electric vehicle diffusion in South Korea: Development of integrated model considering diffusion and macroeconometric and innovation diffusion model</p></a></li>
				<li><a href="/eng/publication/publication_view?no=26"><i class="imgfit"><img src="/images/unicon/uploaded/05_035.png" alt="image"></i><p>Analyzing community acceptance of hydrogen refueling station in South Korea: Discrete choice experiment approach</p></a></li> 
			</ul>
		</div>
	</div>

	<div class="mcon mc03">
		<div class="inner">
			<div class="title">News <a href="/eng/news/news" class="more">More</a></div>
			<div class="mc03_list">
				<div class="swiper-wrapper">
					<c:if test="${arrNewsList.list.total > 0}">
					    <c:forEach var="i" begin="0" end="${arrNewsList.list.total - 1}">
					        <div class="swiper-slide mv">
					            <a href="news/news?boardid=news&mode=view&idx=${arrNewsList.list[i].idx}">
					                <span class="tit">${arrNewsList.list[i].subject}</span>
					                <p>${fn:escapeXml(arrNewsList.list[i].contents)}</p>
					               <%--  <span class="date">${fn:formatDate(arrNewsList.list[i].schedule_date, 'yyyy.MM.dd')}</span> --%>
					            </a>
					        </div>
					    </c:forEach>
					</c:if>
					 <div class="swiper-slide mv">
						<a href="/eng/news/news_view">
							<span class="tit">17th IAMC Annual Meeting to be held at Yonsei University.</span>
							<p>"The 17th Annual Meeting of the Integrated Assessment Modeling Consortium (IAMC) will be held at Yonsei University in Seoul, South Korea, from November 4-6, 2024. <br>
				The IAMC annual meeting is a key forum for discussing advancements in integrated assessment models (IAMs), which are crucial for understanding the interplay between climate change, economic systems, and policy frameworks. Participants from various academic institutions and research centers around the world will gather to share the latest findings on how IAMs can be utilized to address global climate challenges, support sustainable development, and inform national policies. <br>
				This year's annual meeting is organized by IAMC, Yonsei University, and Korea Environmental Institute, with the support of the Republic of Korea Ministry of Environment, Korea Environmental, Industry & Technology Insitute, Korea Environment Corporation, Climateworks Foundation, and the Re-Connect Project."</p>
							<span class="date">2024.10.24</span>
						</a>
					</div>
					
					
				</div>
			</div>
			<div class="mc3_progress"></div>
		</div>
	</div>

	<div class="uni_banner">
		<div class="inner">
			<a href="https://www.yonsei.ac.kr/" target="_blank"><img src="/images/unicon/logo_uni01.svg" alt="연세대학교"></a>
			<a href="https://kei.scholar.go.kr/" target="_blank"><img src="/images/unicon/logo_uni02.svg" alt="한국환경연구원"></a>
			<a href="https://www.snu.ac.kr/" target="_blank"><img src="/images/unicon/logo_uni03.svg" alt="서울대학교"></a>
			<a href="https://www.sookmyung.ac.kr/" target="_blank"><img src="/images/unicon/logo_uni04.svg" alt="숙명여자대학교"></a>
		</div>
	</div>

</div>

<script type="text/javascript">
//<![CDATA[
$(document).ready (function () {
	var $swiperSelector = $('.mc03_list');

	$swiperSelector.each(function(index) {
		var $this = $(this);
		$this.addClass('swiper-slider-' + index);
		
		var dragSize = $this.data('drag-size') ? $this.data('drag-size') : 50;
		var freeMode = $this.data('free-mode') ? $this.data('free-mode') : false;
		var loop = $this.data('loop') ? $this.data('loop') : false;

		var swiper = new Swiper('.swiper-slider-' + index, {
			direction: 'horizontal',
			loop: loop,
			freeMode: freeMode,
			spaceBetween: 0,
			breakpoints: {
				1024: {
					slidesPerView: 4
				},
				768: {
					slidesPerView: "auto"
				},
				320: {
					slidesPerView: "auto"
				}
			},
			scrollbar: {
				el: '.mc3_progress',
				draggable: true,
				dragSize: dragSize
			}
	   });
	});
});
//]]>
</script>
<jsp:include page="./inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

