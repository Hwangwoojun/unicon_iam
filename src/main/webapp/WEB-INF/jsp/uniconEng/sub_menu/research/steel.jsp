<%--
&lt;%&ndash;
  Class Name : EgovMainView.jsp 
  Description : 메인화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
&ndash;%&gt;
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
		<div class="select_box">
			<dl class="select1">
				<dt>한국</dt>
				<dd>
					<a href="javascript:void(0);" class="a on">한국</a>
					<a href="javascript:void(0);" class="b">중국</a>
					<a href="javascript:void(0);" class="c">일본</a>
				</dd>
			</dl>
			<dl class="select2">
				<dt>모형 결과</dt>
				<dd>
					<div class="box a on">
						<a href="javascript:void(0);" class="t1 on">모형 결과</a>
						<a href="javascript:void(0);" class="t2">배출량</a>
					</div>
					<div class="box b">
						<a href="javascript:void(0);" class="t1 on">모형 결과</a>
						<a href="javascript:void(0);" class="t2">배출량</a>
					</div>
					<div class="box c">
						<a href="javascript:void(0);" class="t1 on">모형 결과</a>
						<a href="javascript:void(0);" class="t2">배출량</a>
					</div>
				</dd>
			</dl>
		</div>

		<div class="chart_wrap">
			<div class="hand"><div class="bar_box"></div></div>
			<div class="scrollbox">
				<div class="chart_box chart_a1 on"><canvas class="chart" id="chart_a1"></canvas></div>
				<div class="chart_box chart_a2"><canvas class="chart" id="chart_a2"></canvas></div>
				<div class="chart_box chart_b1"><canvas class="chart" id="chart_b1"></canvas></div>
				<div class="chart_box chart_b2"><canvas class="chart" id="chart_b2"></canvas></div>
				<div class="chart_box chart_c1"><canvas class="chart" id="chart_c1"></canvas></div>
				<div class="chart_box chart_c2"><canvas class="chart" id="chart_c2"></canvas></div>
			</div>
		</div>

	</div>

</div> <!-- //container -->

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript">
//<![CDATA[
$(document).ready(function(){
//select
	$(".select_box dt").click(function(){
		$(this).next().stop(false,true).slideToggle("fast").parent().stop(false,true).toggleClass("on").siblings().removeClass("on").children("dd").slideUp("fast");
	});
	$(".select_box dd a").click(function(){
		$(".select_box dl").removeClass("on");
		$(".select_box dd").slideUp("fast");
	});
	$(".select_box .select1 a").click(function(){
		var selectName1 = $(this).text();
		$(this).parent().prev().text(selectName1);
	});
	$(".select_box .select2 a").click(function(){
		var selectName2 = $(this).text();
		$(this).parent().parent().prev().text(selectName2);
	});
	//국가 선택시
	$(".select_box .select1 .a").click(function(){
		$(".select_box .select2 .box.a").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_a1").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select1 .b").click(function(){
		$(".select_box .select2 .box.b").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_b1").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select1 .c").click(function(){
		$(".select_box .select2 .box.c").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_c1").addClass("on").siblings().removeClass("on");
	});
	//모형결과,배출량 선택시
	$(".select_box .select2 .box.a .t1").click(function(){
		$(".chart_wrap .chart_a1").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select2 .box.a .t2").click(function(){
		$(".chart_wrap .chart_a2").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select2 .box.b .t1").click(function(){
		$(".chart_wrap .chart_b1").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select2 .box.b .t2").click(function(){
		$(".chart_wrap .chart_b2").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select2 .box.c .t1").click(function(){
		$(".chart_wrap .chart_c1").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select2 .box.c .t2").click(function(){
		$(".chart_wrap .chart_c2").addClass("on").siblings().removeClass("on");
	});
//한국 - 모형 결과
	const ctx_a1 = document.getElementById('chart_a1');
	new Chart(ctx_a1, {
		type: 'line',
		data: {
			labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
			datasets: [{
				label: '50%',
				data: [82010000,96406400,91913600,95207900,96519300,88523400,86505100,84532700,82605400,80722000,78881500,77083000,75325500,73608100,71929800,70289800,68687200,67121200,65590800,64095300,62634000,61205900,59810400,58446700,57114200,55811900,54539400,53295900,52080800,50893300,49733000],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			},{
				label: '60%',
				data: [82010000,96406400,91913600,95207900,96519300,85309900,82750600,80268100,77860000,75524200,73258500,71060800,68928900,66861100,64855200,62909600,61022300,59191600,57415900,55693400,54022600,52401900,50829900,49305000,47825800,46391000,44999300,43649300,42339800,41069700,39837600],
				borderWidth: 2,
				borderColor: '#ed7d31',
				backgroundColor: '#ed7d31'
			},{
				label: '70%',
				data: [82010000,96406400,91913600,95207900,96519300,81298000,78103000,75033500,72084700,69251800,66530200,63915500,61403700,58990500,56672200,54444900,52305300,50249700,48274900,46377700,44555000,42804000,41121800,39505700,37953100,36461600,35028600,33652000,32329500,31058900,29838300],
				borderWidth: 2,
				borderColor: '#ffc000',
				backgroundColor: '#ffc000'
			}
			]
		},
		options: {
			scales: {
				y: {
					beginAtZero: true
				}
			}
		}
	});
//한국 - 배출량
	const ctx_a2 = document.getElementById('chart_a2');
	new Chart(ctx_a2, {
		type: 'line',
		data: {
			labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
			datasets: [{
				label: '50%',
				data: [99343800,97078800,94865400,92702400,90588800,88523400,86505100,84532700,82605400,80722000,78881500,77083000,75325500,73608100,71929800,70289800,68687200,67121200,65590800,64095300,62634000,61205900,59810400,58446700,57114200,55811900,54539400,53295900,52080800,50893300,49733000],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			},{
				label: '60%',
				data: [99343800,96363500,93472600,90668400,87948300,85309900,82750600,80268100,77860000,75524200,73258500,71060800,68928900,66861100,64855200,62909600,61022300,59191600,57415900,55693400,54022600,52401900,50829900,49305000,47825800,46391000,44999300,43649300,42339800,41069700,39837600],
				borderWidth: 2,
				borderColor: '#ed7d31',
				backgroundColor: '#ed7d31'
			},{
				label: '70%',
				data: [99343800,95439600,91688800,88085400,84623700,81298000,78103000,75033500,72084700,69251800,66530200,63915500,61403700,58990500,56672200,54444900,52305300,50249700,48274900,46377700,44555000,42804000,41121800,39505700,37953100,36461600,35028600,33652000,32329500,31058900,29838300],
				borderWidth: 2,
				borderColor: '#ffc000',
				backgroundColor: '#ffc000'
			}
			]
		},
		options: {
			scales: {
				y: {
					beginAtZero: true
				}
			}
		}
	});
	
//중국 - 모형 결과
	const ctx_b1 = document.getElementById('chart_b1');
	new Chart(ctx_b1, {
		type: 'line',
		data: {
			labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
			datasets: [{
				label: '50%',
				data: [1770920000,1833050000,1895610000,1966290000,2004010000,1966520000,1921680000,1877870000,1835050000,1793220000,1752330000,1712380000,1673330000,1635180000,1597900000,1561470000,1525870000,1491080000,1457080000,1423860000,1391400000,1359670000,1328670000,1298380000,1268770000,1239850000,1211580000,1183950000,1156960000,1130580000,1104800000],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			},{
				label: '60%',
				data: [1770920000,1833050000,1895610000,1966290000,2000100000,1895130000,1838280000,1783130000,1729640000,1677750000,1627420000,1578590000,1531240000,1485300000,1440740000,1397520000,1355590000,1314920000,1275480000,1237210000,1200100000,1164090000,1129170000,1095300000,1062440000,1030560000,999647000,969657000,940567000,912350000,884980000],
				borderWidth: 2,
				borderColor: '#ed7d31',
				backgroundColor: '#ed7d31'
			},{
				label: '70%',
				data: [1770920000,1833050000,1895100000,1965730000,1998390000,1806010000,1735030000,1666850000,1601340000,1538410000,1477950000,1419870000,1364060000,1310460000,1258960000,1209480000,1161950000,1116280000,1072410000,1030270000,989777000,950878000,913509000,877608000,843118000,809983000,778151000,747570000,718190000,689965000,662850000],
				borderWidth: 2,
				borderColor: '#ffc000',
				backgroundColor: '#ffc000'
			}
			]
		},
		options: {
			scales: {
				y: {
					beginAtZero: true
				}
			}
		}
	});
//중국 - 배출량
	const ctx_b2 = document.getElementById('chart_b2');
	new Chart(ctx_b2, {
		type: 'line',
		data: {
			labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
			datasets: [{
				label: '50%',
				data: [2206890000,2156580000,2107410000,2059360000,2012400000,1966520000,1921680000,1877870000,1835050000,1793220000,1752330000,1712380000,1673330000,1635180000,1597900000,1561470000,1525870000,1491080000,1457080000,1423860000,1391400000,1359670000,1328670000,1298380000,1268770000,1239850000,1211580000,1183950000,1156960000,1130580000,1104800000],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			},{
				label: '60%',
				data: [2206890000,2140690000,2076470000,2014170000,1953750000,1895130000,1838280000,1783130000,1729640000,1677750000,1627420000,1578590000,1531240000,1485300000,1440740000,1397520000,1355590000,1314920000,1275480000,1237210000,1200100000,1164090000,1129170000,1095300000,1062440000,1030560000,999647000,969657000,940567000,912350000,884980000],
				borderWidth: 2,
				borderColor: '#ed7d31',
				backgroundColor: '#ed7d31'
			},{
				label: '70%',
				data: [2206890000,2120160000,2036840000,1956790000,1879890000,1806010000,1735030000,1666850000,1601340000,1538410000,1477950000,1419870000,1364060000,1310460000,1258960000,1209480000,1161950000,1116280000,1072410000,1030270000,989777000,950878000,913509000,877608000,843118000,809983000,778151000,747570000,718190000,689965000,662850000],
				borderWidth: 2,
				borderColor: '#ffc000',
				backgroundColor: '#ffc000'
			}
			]
		},
		options: {
			scales: {
				y: {
					beginAtZero: true
				}
			}
		}
	});
	
//일본 - 모형 결과
	const ctx_c1 = document.getElementById('chart_c1');
	new Chart(ctx_c1, {
		type: 'line',
		data: {
			labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
			datasets: [{
				label: '50%',
				data: [62054300,70612700,66288600,70235900,71491800,84958400,84416600,83809400,78061300,77510900,76923700,76387800,75860900,75337200,75393600,69058100,67936800,66827000,65590800,64095300,62634000,61205900,59810400,58446700,57114200,55811900,54539400,52938800,50715400,48453300,47303000],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			},{
				label: '60%',
				data: [62054300,70612700,66288600,70235900,71491800,84417000,83874500,83266600,76773500,76223100,75628800,75092900,74565900,74042100,74083800,62909600,61022300,59191600,57415900,55693400,54022600,52401900,50829900,49305000,47825800,46391000,44999300,43649300,42339800,41069700,39837600],
				borderWidth: 2,
				borderColor: '#ed7d31',
				backgroundColor: '#ed7d31'
			},{
				label: '70%',
				data: [62054300,70612700,66288600,70235900,71491800,83800900,83257600,82648900,75301600,74751200,74148900,73613000,73085900,72562000,72586900,54444900,52305300,50249700,48274900,46377700,44555000,42804000,41121800,39505700,37953100,36461600,35028600,33652000,32329500,31058900,29838300],
				borderWidth: 2,
				borderColor: '#ffc000',
				backgroundColor: '#ffc000'
			}
			]
		},
		options: {
			scales: {
				y: {
					beginAtZero: true
				}
			}
		}
	});
//일본 - 배출량
	const ctx_c2 = document.getElementById('chart_c2');
	new Chart(ctx_c2, {
		type: 'line',
		data: {
			labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
			datasets: [{
				label: '50%',
				data: [99343800,97078800,94865400,92702400,90588800,88523400,86505100,84532700,82605400,80722000,78881500,77083000,75325500,73608100,71929800,70289800,68687200,67121200,65590800,64095300,62634000,61205900,59810400,58446700,57114200,55811900,54539400,53295900,52080800,50893300,49733000],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			},{
				label: '60%',
				data: [99343800,96363500,93472600,90668400,87948300,85309900,82750600,80268100,77860000,75524200,73258500,71060800,68928900,66861100,64855200,62909600,61022300,59191600,57415900,55693400,54022600,52401900,50829900,49305000,47825800,46391000,44999300,43649300,42339800,41069700,39837600],
				borderWidth: 2,
				borderColor: '#ed7d31',
				backgroundColor: '#ed7d31'
			},{
				label: '70%',
				data: [99343800,95439600,91688800,88085400,84623700,81298000,78103000,75033500,72084700,69251800,66530200,63915500,61403700,58990500,56672200,54444900,52305300,50249700,48274900,46377700,44555000,42804000,41121800,39505700,37953100,36461600,35028600,33652000,32329500,31058900,29838300],
				borderWidth: 2,
				borderColor: '#ffc000',
				backgroundColor: '#ffc000'
			}
			]
		},
		options: {
			scales: {
				y: {
					beginAtZero: true
				}
			}
		}
	});

});
//]]>
</script>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>
--%>



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
<jsp:include page="../../inc/UniconIncHeader.jsp" flush="true"/>
<jsp:include page="../../inc/UniconIncAside.jsp" flush="true"/>

<div id="mainContent" class="container g${gNum} s${sNum}">
	<div class="title">${sName}</div>

	<div class="inner">
		<div class="select_box">
			<dl class="select1">
				<dt>Korea</dt>
				<dd>
					<a href="javascript:void(0);" class="a on">Korea</a>
					<a href="javascript:void(0);" class="b">China</a>
					<a href="javascript:void(0);" class="c">Japan</a>
				</dd>
			</dl>

			<dl class="select2">
				<dt>Carbon Emission</dt>
				<dd>
					<div class="box a on">
						<a href="javascript:void(0);" class="t2 on">Carbon Emission</a>
						<%-- <a href="javascript:void(0);" class="t1 on">모형 결과</a> --%>
					</div>
					<div class="box b">
						<a href="javascript:void(0);" class="t2 on">Carbon Emission</a>
						<%-- <a href="javascript:void(0);" class="t1 on">모형 결과</a> --%>
					</div>
					<div class="box c">
						<a href="javascript:void(0);" class="t2 on">Carbon Emission</a>
						<%-- <a href="javascript:void(0);" class="t1 on">모형 결과</a> --%>
					</div>
				</dd>
			</dl>
		</div>

		<div class="chart_wrap">
			<div class="hand"><div class="bar_box"></div></div>
			<div class="scrollbox">
				<%-- <div class="chart_box chart_a1 on"><canvas class="chart" id="chart_a1"></canvas></div> --%>
				<%-- <div class="chart_box chart_b1"><canvas class="chart" id="chart_b1"></canvas></div> --%>
				<%-- <div class="chart_box chart_c1"><canvas class="chart" id="chart_c1"></canvas></div> --%>
				<div class="chart_box chart_a2 on"><canvas class="chart" id="chart_a2"></canvas></div>
				<div class="chart_box chart_b2"><canvas class="chart" id="chart_b2"></canvas></div>
				<div class="chart_box chart_c2"><canvas class="chart" id="chart_c2"></canvas></div>
			</div>
		</div>

	</div>

</div> <!-- //container -->

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript">
	//<![CDATA[
	$(document).ready(function(){
//select
		$(".select_box dt").click(function(){
			$(this).next().stop(false,true).slideToggle("fast").parent().stop(false,true).toggleClass("on").siblings().removeClass("on").children("dd").slideUp("fast");
		});
		$(".select_box dd a").click(function(){
			$(".select_box dl").removeClass("on");
			$(".select_box dd").slideUp("fast");
		});
		$(".select_box .select1 a").click(function(){
			var selectName1 = $(this).text();
			$(this).parent().prev().text(selectName1);
		});
		$(".select_box .select2 a").click(function(){
			var selectName2 = $(this).text();
			$(this).parent().parent().prev().text(selectName2);
		});
		$(".select_box .select1 .a").click(function(){
			$(".select_box .select2 .box.a").addClass("on").siblings().removeClass("on");
			// $(".chart_wrap .chart_a1").addClass("on").siblings().removeClass("on");
			$(".chart_wrap .chart_a2").addClass("on").siblings().removeClass("on");
		});
		$(".select_box .select1 .b").click(function(){
			$(".select_box .select2 .box.b").addClass("on").siblings().removeClass("on");
			// $(".chart_wrap .chart_b1").addClass("on").siblings().removeClass("on");
			$(".chart_wrap .chart_b2").addClass("on").siblings().removeClass("on");
		});
		$(".select_box .select1 .c").click(function(){
			$(".select_box .select2 .box.c").addClass("on").siblings().removeClass("on");
			// $(".chart_wrap .chart_c1").addClass("on").siblings().removeClass("on");
			$(".chart_wrap .chart_c2").addClass("on").siblings().removeClass("on");
		});
// $(".select_box .select2 .box.a .t1").click(function(){
// 	$(".chart_wrap .chart_a1").addClass("on").siblings().removeClass("on");
// });
		$(".select_box .select2 .box.a .t2").click(function(){
			$(".chart_wrap .chart_a2").addClass("on").siblings().removeClass("on");
		});
// $(".select_box .select2 .box.b .t1").click(function(){
// 	$(".chart_wrap .chart_b1").addClass("on").siblings().removeClass("on");
// });
		$(".select_box .select2 .box.b .t2").click(function(){
			$(".chart_wrap .chart_b2").addClass("on").siblings().removeClass("on");
		});
// $(".select_box .select2 .box.c .t1").click(function(){
// 	$(".chart_wrap .chart_c1").addClass("on").siblings().removeClass("on");
// });
		$(".select_box .select2 .box.c .t2").click(function(){
			$(".chart_wrap .chart_c2").addClass("on").siblings().removeClass("on");
		});

//한국 - 모형 결과
		/*	const ctx_a1 = document.getElementById('chart_a1');
            new Chart(ctx_a1, {
                type: 'line',
                data: {
                    labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
                    datasets: [{
                        label: '50%',
                        data: [82010000,96406400,91913600,95207900,96519300,88523400,86505100,84532700,82605400,80722000,78881500,77083000,75325500,73608100,71929800,70289800,68687200,67121200,65590800,64095300,62634000,61205900,59810400,58446700,57114200,55811900,54539400,53295900,52080800,50893300,49733000],
                        borderWidth: 2,
                        borderColor: '#4472c4',
                        backgroundColor: '#4472c4'
                    },{
                        label: '60%',
                        data: [82010000,96406400,91913600,95207900,96519300,85309900,82750600,80268100,77860000,75524200,73258500,71060800,68928900,66861100,64855200,62909600,61022300,59191600,57415900,55693400,54022600,52401900,50829900,49305000,47825800,46391000,44999300,43649300,42339800,41069700,39837600],
                        borderWidth: 2,
                        borderColor: '#ed7d31',
                        backgroundColor: '#ed7d31'
                    },{
                        label: '70%',
                        data: [82010000,96406400,91913600,95207900,96519300,81298000,78103000,75033500,72084700,69251800,66530200,63915500,61403700,58990500,56672200,54444900,52305300,50249700,48274900,46377700,44555000,42804000,41121800,39505700,37953100,36461600,35028600,33652000,32329500,31058900,29838300],
                        borderWidth: 2,
                        borderColor: '#ffc000',
                        backgroundColor: '#ffc000'
                    }
                    ]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });*/

//한국 - 배출량
		const ctx_a2 = document.getElementById('chart_a2');
		new Chart(ctx_a2, {
			type: 'line',
			data: {
				labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
				datasets: [{
					label: '50%',
					data: [99343800,97078800,94865400,92702400,90588800,88523400,86505100,84532700,82605400,80722000,78881500,77083000,75325500,73608100,71929800,70289800,68687200,67121200,65590800,64095300,62634000,61205900,59810400,58446700,57114200,55811900,54539400,53295900,52080800,50893300,49733000],
					borderWidth: 2,
					borderColor: '#4472c4',
					backgroundColor: '#4472c4'
				},{
					label: '60%',
					data: [99343800,96363500,93472600,90668400,87948300,85309900,82750600,80268100,77860000,75524200,73258500,71060800,68928900,66861100,64855200,62909600,61022300,59191600,57415900,55693400,54022600,52401900,50829900,49305000,47825800,46391000,44999300,43649300,42339800,41069700,39837600],
					borderWidth: 2,
					borderColor: '#ed7d31',
					backgroundColor: '#ed7d31'
				},{
					label: '70%',
					data: [99343800,95439600,91688800,88085400,84623700,81298000,78103000,75033500,72084700,69251800,66530200,63915500,61403700,58990500,56672200,54444900,52305300,50249700,48274900,46377700,44555000,42804000,41121800,39505700,37953100,36461600,35028600,33652000,32329500,31058900,29838300],
					borderWidth: 2,
					borderColor: '#ffc000',
					backgroundColor: '#ffc000'
				}
				]
			},
			options: {
				scales: {
					y: {
						beginAtZero: true
					}
				}
			}
		});

//중국 - 모형 결과
		/*	const ctx_b1 = document.getElementById('chart_b1');
            new Chart(ctx_b1, {
                type: 'line',
                data: {
                    labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
                    datasets: [{
                        label: '50%',
                        data: [1770920000,1833050000,1895610000,1966290000,2004010000,1966520000,1921680000,1877870000,1835050000,1793220000,1752330000,1712380000,1673330000,1635180000,1597900000,1561470000,1525870000,1491080000,1457080000,1423860000,1391400000,1359670000,1328670000,1298380000,1268770000,1239850000,1211580000,1183950000,1156960000,1130580000,1104800000],
                        borderWidth: 2,
                        borderColor: '#4472c4',
                        backgroundColor: '#4472c4'
                    },{
                        label: '60%',
                        data: [1770920000,1833050000,1895610000,1966290000,2000100000,1895130000,1838280000,1783130000,1729640000,1677750000,1627420000,1578590000,1531240000,1485300000,1440740000,1397520000,1355590000,1314920000,1275480000,1237210000,1200100000,1164090000,1129170000,1095300000,1062440000,1030560000,999647000,969657000,940567000,912350000,884980000],
                        borderWidth: 2,
                        borderColor: '#ed7d31',
                        backgroundColor: '#ed7d31'
                    },{
                        label: '70%',
                        data: [1770920000,1833050000,1895100000,1965730000,1998390000,1806010000,1735030000,1666850000,1601340000,1538410000,1477950000,1419870000,1364060000,1310460000,1258960000,1209480000,1161950000,1116280000,1072410000,1030270000,989777000,950878000,913509000,877608000,843118000,809983000,778151000,747570000,718190000,689965000,662850000],
                        borderWidth: 2,
                        borderColor: '#ffc000',
                        backgroundColor: '#ffc000'
                    }
                    ]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });*/

//중국 - 배출량
		const ctx_b2 = document.getElementById('chart_b2');
		new Chart(ctx_b2, {
			type: 'line',
			data: {
				labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
				datasets: [{
					label: '50%',
					data: [2206890000,2156580000,2107410000,2059360000,2012400000,1966520000,1921680000,1877870000,1835050000,1793220000,1752330000,1712380000,1673330000,1635180000,1597900000,1561470000,1525870000,1491080000,1457080000,1423860000,1391400000,1359670000,1328670000,1298380000,1268770000,1239850000,1211580000,1183950000,1156960000,1130580000,1104800000],
					borderWidth: 2,
					borderColor: '#4472c4',
					backgroundColor: '#4472c4'
				},{
					label: '60%',
					data: [2206890000,2140690000,2076470000,2014170000,1953750000,1895130000,1838280000,1783130000,1729640000,1677750000,1627420000,1578590000,1531240000,1485300000,1440740000,1397520000,1355590000,1314920000,1275480000,1237210000,1200100000,1164090000,1129170000,1095300000,1062440000,1030560000,999647000,969657000,940567000,912350000,884980000],
					borderWidth: 2,
					borderColor: '#ed7d31',
					backgroundColor: '#ed7d31'
				},{
					label: '70%',
					data: [2206890000,2120160000,2036840000,1956790000,1879890000,1806010000,1735030000,1666850000,1601340000,1538410000,1477950000,1419870000,1364060000,1310460000,1258960000,1209480000,1161950000,1116280000,1072410000,1030270000,989777000,950878000,913509000,877608000,843118000,809983000,778151000,747570000,718190000,689965000,662850000],
					borderWidth: 2,
					borderColor: '#ffc000',
					backgroundColor: '#ffc000'
				}
				]
			},
			options: {
				scales: {
					y: {
						beginAtZero: true
					}
				}
			}
		});

//일본 - 모형 결과
		/*	const ctx_c1 = document.getElementById('chart_c1');
            new Chart(ctx_c1, {
                type: 'line',
                data: {
                    labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
                    datasets: [{
                        label: '50%',
                        data: [62054300,70612700,66288600,70235900,71491800,84958400,84416600,83809400,78061300,77510900,76923700,76387800,75860900,75337200,75393600,69058100,67936800,66827000,65590800,64095300,62634000,61205900,59810400,58446700,57114200,55811900,54539400,52938800,50715400,48453300,47303000],
                        borderWidth: 2,
                        borderColor: '#4472c4',
                        backgroundColor: '#4472c4'
                    },{
                        label: '60%',
                        data: [62054300,70612700,66288600,70235900,71491800,84417000,83874500,83266600,76773500,76223100,75628800,75092900,74565900,74042100,74083800,62909600,61022300,59191600,57415900,55693400,54022600,52401900,50829900,49305000,47825800,46391000,44999300,43649300,42339800,41069700,39837600],
                        borderWidth: 2,
                        borderColor: '#ed7d31',
                        backgroundColor: '#ed7d31'
                    },{
                        label: '70%',
                        data: [62054300,70612700,66288600,70235900,71491800,83800900,83257600,82648900,75301600,74751200,74148900,73613000,73085900,72562000,72586900,54444900,52305300,50249700,48274900,46377700,44555000,42804000,41121800,39505700,37953100,36461600,35028600,33652000,32329500,31058900,29838300],
                        borderWidth: 2,
                        borderColor: '#ffc000',
                        backgroundColor: '#ffc000'
                    }
                    ]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });*/

//일본 - 배출량
		const ctx_c2 = document.getElementById('chart_c2');
		new Chart(ctx_c2, {
			type: 'line',
			data: {
				labels: ['2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030','2031','2032','2033','2034','2035','2036','2037','2038','2039','2040','2041','2042','2043','2044','2045','2046','2047','2048','2049','2050'],
				datasets: [{
					label: '50%',
					data: [99343800,97078800,94865400,92702400,90588800,88523400,86505100,84532700,82605400,80722000,78881500,77083000,75325500,73608100,71929800,70289800,68687200,67121200,65590800,64095300,62634000,61205900,59810400,58446700,57114200,55811900,54539400,53295900,52080800,50893300,49733000],
					borderWidth: 2,
					borderColor: '#4472c4',
					backgroundColor: '#4472c4'
				},{
					label: '60%',
					data: [99343800,96363500,93472600,90668400,87948300,85309900,82750600,80268100,77860000,75524200,73258500,71060800,68928900,66861100,64855200,62909600,61022300,59191600,57415900,55693400,54022600,52401900,50829900,49305000,47825800,46391000,44999300,43649300,42339800,41069700,39837600],
					borderWidth: 2,
					borderColor: '#ed7d31',
					backgroundColor: '#ed7d31'
				},{
					label: '70%',
					data: [99343800,95439600,91688800,88085400,84623700,81298000,78103000,75033500,72084700,69251800,66530200,63915500,61403700,58990500,56672200,54444900,52305300,50249700,48274900,46377700,44555000,42804000,41121800,39505700,37953100,36461600,35028600,33652000,32329500,31058900,29838300],
					borderWidth: 2,
					borderColor: '#ffc000',
					backgroundColor: '#ffc000'
				}
				]
			},
			options: {
				scales: {
					y: {
						beginAtZero: true
					}
				}
			}
		});

	});
	//]]>
</script>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>


