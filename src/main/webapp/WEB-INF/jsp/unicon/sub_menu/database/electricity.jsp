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
<jsp:include page="../../inc/UniconIncHeader.jsp" flush="true"/>
<jsp:include page="../../inc/UniconIncAside.jsp" flush="true"/>

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
							<th>Country</th>
							<th>source</th>
							<th>Citation</th>
							<th>교차검증 내용 및 자료</th>
							<th>URL</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>KOR</td>
							<td>EPISIS</td>
							<td>검색일: 2024.04.05, 전력통계정보시스템(EPISIS), 2020년 발전설비용량,</td>
							<td>IEA, Renewable Capacities(2024)</td>
							<td><a href="https://epsis.kpx.or.kr/epsisnew/"
								target="_blank">바로가기</a>
						</tr>
						<tr>
							<td>CHN</td>
							<td>CEC(China Electricity Council)</td>
							<td>검색일: 2022.11.25</td>
							<td></td>
							<td><a href="https://cec.org.cn/detail/index.html?3-277104	"
								target="_blank">바로가기</a>
						</tr>
						<tr>
							<td>CHN, JPN</td>
							<td>PLEXOS-world</td>
							<td>검색일: 2024.03.04, Mattsson, N., Verendel, V., Hedenus,
								F., & Reichenberg, L. (2021). An autopilot for energy
								models–Automatic generation of renewable supply curves, hourly
								capacity factors and hourly synthetic electricity demand for
								arbitrary world regions. Energy Strategy Reviews, 33, 100606.</td>
							<td>IEA, Renewable Capacities(2024)</td>
							<td><a
								href="	https://github.com/niclasmattsson/GlobalEnergyGIS	 "
								target="_blank">바로가기</a>
						</tr>
						<tr>
							<td>EUR</td>
							<td>PyPSA-EUR</td>
							<td>검색일: 2024.06.26. Hörsch, Jonas, et al. "PyPSA-Eur: An
								open optimisation model of the European transmission system."
								Energy strategy reviews 22 (2018): 207-215.</td>
							<td>Eurostats(Maximum electrical capacity),
								Germany</td>
							<td><a href="https://github.com/PyPSA/pypsa-eur"
								target="_blank">바로가기</a>
						</tr>
						<tr>
							<td>USA</td>
							<td>ReEDs(NREL)</td>
							<td>검색일: 2024.06.18</td>
							<td>EIA(2022)electricity generation IRENA</td>
							<td><a href="https://github.com/NREL/ReEDS-2.0/tree/main/inputs/capacitydata"
								target="_blank">바로가기</a>
						</tr>
						<tr>
							<td>CAN</td>
							<td>CER(Canada Energy Regulator)</td>
							<td>검색일: 2024.07.09</td>
							<td></td>
							<td><a
								href="	https://apps.cer-rec.gc.ca/ftrppndc/dflt.aspx?GoCTemplateCulture=en-CA	 "
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
               width: '400px' // Set desired width
           },{ 
               targets: 4, // Third column (zero-indexed)
               width: '100px' // Set desired width
           }
       ]
    });
});
</script>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

