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
<jsp:include page="../../../inc/dtd.jsp" flush="true"/>
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>

<style >

		table {
            width: 100%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
            font-weight: bold;
        }
        .dataTables_wrapper {
            max-width: 100%;
          
        } 
        
        .dataTables_wrapper .dataTables_length select {
            padding: 0.5em;
            border-radius: 4px;
            border: 1px solid #ddd;
            width: 70px; /* Set the desired width */
            height:50px !important;
        }
        .dataTables_wrapper .dataTables_filter input {
            padding: 0.5em;
            border-radius: 4px;
            border: 1px solid #ddd;
        }

       
</style>
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<!-- 전체 레이어 시작 -->
<jsp:include page="../../../inc/UniconIncHeader.jsp" flush="true"/>
<jsp:include page="../../../inc/UniconIncAside.jsp" flush="true"/>

<div id="mainContent" class="container g${gNum} s${sNum}">
	<div class="title">${sName}</div>
	
	<div class="inner">
		

		<div class="chart_wrap">
			<div class="hand"><div class="bar_box"></div></div>
			<div class="scrollbox">
				<div class="chart_box chart_a1 on">
				<table id="dataTable" class="display">
							<thead>
				<tr>
					<th>DB특성</th>
					<th>세부항목</th>
					<th>자료명</th>
					<th>출처</th>
					<th>단위</th>
					<th>물가기준</th>
					<th>링크</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>기술</td>
					<td>기술별 연도별 차량 등록대수</td>
					<td>The New Zealand 2022 Vehicle Fleet : Data Spreadsheet</td>
					<td>Ministry of Transport, NewZealand</td>
					<td>unit</td>
					<td></td>
					<td><a
						href="https://www.mot-dev.link/fleet/annual-motor-vehicle-fleet-statistics/ "
						target="_blank">바로가기</a>
				</tr>
				<tr>
					<td>소비자</td>
					<td>기술별 연도별 총 주행거리</td>
					<td>The New Zealand 2022 Vehicle Fleet : Data Spreadsheet</td>
					<td>Ministry of Transport, NewZealand</td>
					<td>million vehicle kilometres travelled</td>
					<td>-</td>
					<td><a
						href="https://www.mot-dev.link/fleet/annual-motor-vehicle-fleet-statistics/ "
						target="_blank">바로가기</a>
				</tr>
				<tr>
					<td>기술</td>
					<td>기술별 연도별 차량 등록대수</td>
					<td>Vehicle registrations, by type of vehicle and fuel type</td>
					<td>StatCan</td>
					<td>unit</td>
					<td>-</td>
					<td><a
						href="https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=2310030801 "
						target="_blank">바로가기</a>
				</tr>
				<tr>
					<td>소비자</td>
					<td>기술별 연도별 대당 주행거리</td>
					<td>Car/Bus/Truck Secondary Energy Use and GHG Emissions</td>
					<td>Natural Resources Canada</td>
					<td>km/unit</td>
					<td>-</td>
					<td><a
						href="https://oee.nrcan.gc.ca/corporate/statistics/neud/dpa/menus/trends/comprehensive/trends_tran_ca.cfm "
						target="_blank">바로가기</a>
				</tr>
				<tr>
					<td>기술</td>
					<td>기술별 연도별 차량 등록대수</td>
					<td>Vehículos de motor registrados en circulación</td>
					<td>INEGI</td>
					<td>unit</td>
					<td>-</td>
					<td><a
						href="https://en.www.inegi.org.mx/programas/vehiculosmotor/#tabular_data "
						target="_blank">바로가기</a>
				</tr>
				<tr>
					<td>소비자</td>
					<td>기술별 연도별 대당 주행거리</td>
					<td>Base de Indicadores de eficiencia energéticanacional</td>
					<td>SENER</td>
					<td>km/año de automóviles</td>
					<td>-</td>
					<td><a href="https://www.biee-conuee.net/ " target="_blank">바로가기</a>
				</tr>
				<tr>
					<td>기술</td>
					<td>기술별 연도별 차량 등록대수</td>
					<td>Road Transport equipment - stock of vehicles</td>
					<td>Eurostat</td>
					<td>unit</td>
					<td>-</td>
					<td><a
						href="https://ec.europa.eu/eurostat/databrowser/explore/all/all_themes?lang=en&display=list&sort=category "
						target="_blank">바로가기</a>
				</tr>
				<tr>
					<td>기술</td>
					<td>기술별 연도별 총 주행거리</td>
					<td>Road traffic</td>
					<td>Eurostat</td>
					<td>million km</td>
					<td></td>
					<td><a
						href="https://ec.europa.eu/eurostat/databrowser/explore/all/all_themes?lang=en&display=list&sort=category "
						target="_blank">바로가기</a>
				</tr>
				<tr>
					<td>기술</td>
					<td>기술별 연도별 차량 등록대수</td>
					<td>Highway Statistics Series</td>
					<td>FHWA</td>
					<td>unit</td>
					<td>-</td>
					<td><a
						href="https://www.fhwa.dot.gov/policyinformation/statistics/2022/mv1.cfm "
						target="_blank">바로가기</a>
				</tr>
				<tr>
					<td>기술</td>
					<td>기술별 연도별 차량 등록대수</td>
					<td>Inventory of U.S. Greenhouse Gas Emissions and Sinks</td>
					<td>EPA</td>
					<td>billion miles</td>
					<td>-</td>
					<td><a
						href="https://www.epa.gov/ghgemissions/inventory-us-greenhouse-gas-emissions-and-sinks "
						target="_blank">바로가기</a>
				</tr>
				</tbody>
			</table>
				</div>
				
			</div>
		</div>

	</div>

</div> <!-- //container -->

<script type="text/javascript">
$(document).ready(function(){
	
	$('#dataTable').DataTable({
        language: {
            lengthMenu: "_MENU_ per page",
            info: " _START_ to _END_ of _TOTAL_ "
        },
        columnDefs: [
        	 { 
                 targets: 0, // Third column (zero-indexed)
                 width: '100px' // Set desired width
             },
            { 
                targets: 2, // Third column (zero-indexed)
                width: '300px' // Set desired width
            }
        ]
    });
});
</script>
<jsp:include page="../../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

