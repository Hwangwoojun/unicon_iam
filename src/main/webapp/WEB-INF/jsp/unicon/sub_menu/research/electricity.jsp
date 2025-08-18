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
		<div class="select_box">
			<dl class="select2" style="width:420px !important;">
				<dt>국가별 발전기종류별 설비용량 (2020년 기준)</dt>
				<dd>
					<div class="box a on">
						<a href="javascript:void(0);" class="t1 on">발전기종류별 설비용량 (2020년 기준)</a>
						<a href="javascript:void(0);" class="t2">발전기 종류별 비중 (2020년 기준)</a>
					</div>
				</dd>
			</dl>
			<dl class="select1">
				<dt>한국</dt>
				<dd>
					<a href="javascript:void(0);" class="a on">한국</a>
					<a href="javascript:void(0);" class="b">중국</a>
					<a href="javascript:void(0);" class="c">일본</a>
					<a href="javascript:void(0);" class="d">유럽</a>
					<a href="javascript:void(0);" class="e">미국</a>
					<a href="javascript:void(0);" class="f">캐나다</a>
				</dd>
			</dl>
			<dl class="select3" style="display: none;">
				<dt>unit : 비율</dt>
				<dd>
					<a href="javascript:void(0);" class="u1 on">unit : 비율</a>
					<a href="javascript:void(0);" class="u2">unit : GW</a>

				</dd>
			</dl>
			
		</div>

		<div class="chart_wrap">
			<div class="hand"><div class="bar_box"></div></div>
			<div class="scrollbox">
				<div class="chart_box chart_a1 on"><canvas class="chart" id="chart_a1"></canvas></div>
				<div class="chart_box chart_a2"><canvas class="chart" id="chart_a2"></canvas></div>
				<div class="chart_box chart_a3"><canvas class="chart" id="chart_a3"></canvas></div>
				<div class="chart_box chart_a4"><canvas class="chart" id="chart_a4"></canvas></div>
				<div class="chart_box chart_a5"><canvas class="chart" id="chart_a5"></canvas></div>
				<div class="chart_box chart_a6"><canvas class="chart" id="chart_a6"></canvas></div>
				<div class="chart_box chart_b1"><canvas class="chart" id="chart_b1"></canvas></div>
				<div class="chart_box chart_b2"><canvas class="chart" id="chart_b2"></canvas></div>
				<div class="chart_box chart_u1"><canvas class="chart" id="chart_u1"></canvas></div>
				<div class="chart_box chart_u2"><canvas class="chart" id="chart_u2"></canvas></div>
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
	$(".select_box .select3 a").click(function(){
		var selectName3 = $(this).text();
		$(this).parent().prev().text(selectName3);
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
		$(".select_box .select2 .box.a").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_a2").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select1 .c").click(function(){
		$(".select_box .select2 .box.a").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_a3").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select1 .d").click(function(){
		$(".select_box .select2 .box.a").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_a4").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select1 .e").click(function(){
		$(".select_box .select2 .box.a").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_a5").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select1 .f").click(function(){
		$(".select_box .select2 .box.a").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_a6").addClass("on").siblings().removeClass("on");
	});
	
	$(".select_box .select3 .u1").click(function(){
		//$(".select_box .select2 .box.b").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_u1").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select3 .u2").click(function(){
		//$(".select_box .select2 .box.b").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_u2").addClass("on").siblings().removeClass("on");
	});
	
	
	//모형결과,배출량 선택시
	$(".select_box .select2 .box.a .t1").click(function(){
		$(".select_box .select1 dt").text("한국");
		$(".select_box .select1").css("display", "block");
		$(".select_box .select3").css("display", "none");
		$(".chart_wrap .chart_a1").addClass("on").siblings().removeClass("on");
	});
	$(".select_box .select2 .box.a .t2").click(function(){
		$(".select_box .select1").css("display", "none");
		$(".select_box .select3").css("display", "block");
		$(".chart_wrap .chart_u1").addClass("on").siblings().removeClass("on");
	});
	
//한국 - 국가별 발전기종류별 설비용량 
	const ctx_a1 = document.getElementById('chart_a1');
	new Chart(ctx_a1, {
		type: 'bar',
		data: {
			labels: ['Nuclear', 'Coal', 'LNG_CCGT', 'LNG_OCGT', 'LNG_CO', 'Oil', 'Solar', 'WindOn', 'WindOff', 'Biomass', 'Geothermal', 'Hydro', 'PUMP', 'Waste', 'Battery'],
			datasets: [{
				label: 'KOR',
				data: ['23.25', '38.3', '0.3', '1.4', '32.4', '2.1', '17.32', '1.68', , '3.5', , '1.8', '4.7', '0.35', '0.624'],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			}
			]
		},
		options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                }
            },
            scales: {
            	x: {
                    stacked: true
                },
                y: {
                	 stacked: true
                }
            }
        }
	});
	
	
	const ctx_a2 = document.getElementById('chart_a2');
	new Chart(ctx_a2, {
		type: 'bar',
		data: {
			labels: ['Nuclear', 'Coal', 'LNG_CCGT', 'LNG_OCGT', 'LNG_CO', 'Oil', 'Solar', 'WindOn', 'WindOff', 'Biomass', 'Geothermal', 'Hydro', 'PUMP', 'Waste', 'Battery'],
			datasets: [{
				label: 'CHN',
				data: ['48.75','1035.65','92.43','','','0.458','204.67','169.95','40.09','63.84','','325.9','39.41','',''],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			}
			]
		},
		options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                }
            },
            scales: {
            	x: {
                    stacked: true
                },
                y: {
                	 stacked: true
                }
            }
        }
	});	const ctx_a3 = document.getElementById('chart_a3');
	new Chart(ctx_a3, {
		type: 'bar',
		data: {
			labels: ['Nuclear', 'Coal', 'LNG_CCGT', 'LNG_OCGT', 'LNG_CO', 'Oil', 'Solar', 'WindOn', 'WindOff', 'Biomass', 'Geothermal', 'Hydro', 'PUMP', 'Waste', 'Battery'],
			datasets: [{
				label: 'JPN',
				data: ['42.55','41.52','','','53.362','44.104','71.8','4.060521','0.0586','2.08','0.487004','28.135694','21.897','',''],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			}
			]
		},
		options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                }
            },
            scales: {
            	x: {
                    stacked: true
                },
                y: {
                	 stacked: true
                }
            }
        }
	});	
	const ctx_a4 = document.getElementById('chart_a4');
	new Chart(ctx_a4, {
		type: 'bar',
		data: {
			labels: ['Nuclear', 'Coal', 'LNG_CCGT', 'LNG_OCGT', 'LNG_CO', 'Oil', 'Solar', 'WindOn', 'WindOff', 'Biomass', 'Geothermal', 'Hydro', 'PUMP', 'Waste', 'Battery'],
			datasets: [{
				label: 'EUR',
				data: ['119.4121','113.355946','168.604','','0.4194','4.6867625','152.53796','184.6782','24.99762129','17.029162','0.098','154.96131','54.83747','2.118754','0.157'],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			}
			]
		},
		options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                }
            },
            scales: {
            	x: {
                    stacked: true
                },
                y: {
                	 stacked: true
                }
            }
        }
	});	
	const ctx_a5 = document.getElementById('chart_a5');
	new Chart(ctx_a5, {
		type: 'bar',
		data: {
			labels: ['Nuclear', 'Coal', 'LNG_CCGT', 'LNG_OCGT', 'LNG_CO', 'Oil', 'Solar', 'WindOn', 'WindOff', 'Biomass', 'Geothermal', 'Hydro', 'PUMP', 'Waste', 'Battery'],
			datasets: [{
				label: 'USA',
				data: ['98.203704','232.689416','269.218214','','200.496101','22.121434','44.91425357448','117.8093','','12.3','2.5','79.181899','23.052703','3.4635','1.478'],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			}
			]
		},
		options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                }
            },
            scales: {
            	x: {
                    stacked: true
                },
                y: {
                	 stacked: true
                }
            }
        }
	});	const ctx_a6 = document.getElementById('chart_a6');
	new Chart(ctx_a6, {
		type: 'bar',
		data: {
			labels: ['Nuclear', 'Coal', 'LNG_CCGT', 'LNG_OCGT', 'LNG_CO', 'Oil', 'Solar', 'WindOn', 'WindOff', 'Biomass', 'Geothermal', 'Hydro', 'PUMP', 'Waste', 'Battery'],
			datasets: [{
				label: 'CAN',
				data: ['14.845','7.928','','','22.89333','3.66056','3.11667','','','','','81.74349','','',''],
				borderWidth: 2,
				borderColor: '#4472c4',
				backgroundColor: '#4472c4'
			}
			]
		},
		options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                }
            },
            scales: {
            	x: {
                    stacked: true
                },
                y: {
                	 stacked: true
                }
            }
        }
	});
	
	
	
	
//한국 - 배출량
	const ctx_u1 = document.getElementById('chart_u1');


   /*  function calculatePercentages(dataset) {
        const total = dataset.reduce((sum, value) => sum + value, 0);
        return dataset.map(value => (value / total * 100).toFixed(2));
    }
    const percentages1 = calculatePercentages(dataset1);
    const percentages2 = calculatePercentages(dataset2);
    const percentages3 = calculatePercentages(dataset3);
    const percentages4 = calculatePercentages(dataset4);
    const percentages5 = calculatePercentages(dataset5);
    const percentages6 = calculatePercentages(dataset6);
    const percentages7 = calculatePercentages(dataset7);
    const percentages8 = calculatePercentages(dataset8);
    const percentages9 = calculatePercentages(dataset9);
    const percentages10 = calculatePercentages(dataset10);
    const percentages11 = calculatePercentages(dataset11);
    const percentages12 = calculatePercentages(dataset12);
    const percentages13 = calculatePercentages(dataset13);
    const percentages14 = calculatePercentages(dataset14);
    const percentages15 = calculatePercentages(dataset15);
      */
	
	new Chart(ctx_u1, {
		type: 'bar',
		data: {
			labels: ['KOR','CHN','JPN','EUR','USA','CAN'],
			datasets: [{
				label: 'Nuclear',
				data: ['18.20331339','2.411995559','13.72337967','11.96641503','8.867723905','11.06291553'],
				borderWidth: 2,
				/* borderColor: '#4472c4',
				backgroundColor: '#4472c4' */
			},{
				label: 'Coal',
				data: ['29.98653346','51.24068104','13.39118035','11.35952132','21.01168706','5.908170721'],
				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'LNG_CCGT',
				data: ['0.234881463','4.57314358','0','16.89598826','24.31021127','0'],
				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'LNG_OCGT',
				data: ['1.096113495','0','0','0','0','0'],
				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'LNG_CO',
				data: ['25.36719802','0','17.21050496','0.042028525','18.10465385','17.06075959'],

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Oil',
				data: ['1.644170242','0.022660389','14.22458136','0.469665513','1.997549594','2.727953256'],

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Solar',
				data:  ['13.56048981','10.1264232','23.15719531','15.2859931','4.055724824','2.322630984'],

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'WindOn',
				data: ['1.315336194','8.408587595','1.309613898','18.50680114','10.63809514','0'],

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'WindOff',
				data:  ['0','1.983526194','0.018899884','2.505038527','0','0'],

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Biomass',
				data:  ['2.740283737','3.158600954','0.670849112','1.706510648','1.110681162','0'],

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Geothermal',
				data: ['0','0','0.157070289','0.009820685','0.225748204','0'],

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Hydro',
				data:['1.409288779','16.12449954','9.074425642','15.52883962','7.150068582','60.91756991'],

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'PUMP',
				data:  ['3.679809589','1.949881948','7.062299522','5.495321875','2.081642516','0'],

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Waste',
				data: ['0.274028374','0','0','0.212322618','0.312751561','0'],

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Battery',
				data: ['0.488553443','0','0','0.015733139','0.133462338','0'],
				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			}
			]
		},
		
		options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                }
            },
            
            scales: {
                y: {
                	stacked: true,
                    beginAtZero: true,
                    min: 0,
                    max: 100,
                    ticks: {
                        callback: function(value) {
                            return value + '%';
                        }
                    }
                },
                x: {
                    stacked: true
                },
                y: {
                    stacked: true,
                    ticks: {
                        callback: function(value) {
                            return value + '%';
                        }
                    }
                }
            }
        }
	});
	
	const ctx_u2 = document.getElementById('chart_u2');
	
	const dataset1 = ['23.25','48.75','42.55','119.4121','98.203704','14.845'];
	const dataset2 = [38.3,1035.65,41.52,113.355946,232.689416,7.928];
	const dataset3 = [0.3,92.43,,168.604,269.218214,,];
	const dataset4 = [1.4,,,,,];
	const dataset5 = [32.4,,53.362,0.4194,2.496101,22.89333];
	const dataset6 = [2.1,0.458,44.104,4.6867625,22.121434,3.66056];
	const dataset7 = [17.32,204.67,71.8,152.53796,44.91425357448,3.11667];
	const dataset8 = [1.68,169.95,4.060521,184.6782,117.8093,0];
	const dataset9 = [0,40.09,0.0586,24.99762129,,];
	const dataset10 = [3.5,63.84,2.08,17.029162,12.3,];
	const dataset11 = [0,0,0.487004,0.098,2.5,0];
	const dataset12 = [1.8,325.9,28.135694,154.96131,79.181899,81.74349];
	const dataset13 = [4.7,39.41,21.897,54.83747,23.052703,];
	const dataset14 = [0.35,,,2.118754,3.4635,];
	const dataset15 = [0.624,,,0.157,1.478,];
	
	new Chart(ctx_u2, {
		type: 'bar',
		data: {
			labels: ['KOR','CHN','JPN','EUR','USA','CAN'],
			datasets: [{
				label: 'Nuclear',
				data: dataset1,
				borderWidth: 2,
				/* borderColor: '#4472c4',
				backgroundColor: '#4472c4' */
			},{
				label: 'Coal',
				data: dataset2,
				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'LNG_CCGT',
				data: dataset3,
				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'LNG_OCGT',
				data: dataset4,
				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'LNG_CO',
				data: dataset5,

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Oil',
				data: dataset6,

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Solar',
				data:  dataset7,

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'WindOn',
				data: dataset8,

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'WindOff',
				data:  dataset9,

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Biomass',
				data: dataset10,

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Geothermal',
				data: dataset11,

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Hydro',
				data:dataset12,
				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'PUMP',
				data:  dataset13,

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Waste',
				data: dataset14,

				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			},{
				label: 'Battery',
				data: dataset15,
				borderWidth: 2,
				/* borderColor: '#ed7d31',
				backgroundColor: '#ed7d31' */
			}
			]
		},
		
		options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                }
               
            },
            scales: {
            	x: {
                    stacked: true
                },
                y: {
                	stacked: true
                    
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

