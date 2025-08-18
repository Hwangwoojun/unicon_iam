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
<noscript>Some features are not available in browsers that do not support JavaScript.</noscript>	
<!-- 전체 레이어 시작 -->
<jsp:include page="../../inc/UniconIncHeader.jsp" flush="true"/>
<jsp:include page="../../inc/UniconIncAside.jsp" flush="true"/>

<div id="mainContent" class="container g${gNum} s${sNum}">
	<div class="title">${sName}</div>
	
	<div class="assignment_area1">
		<div class="inner">
			<div class="img"><img src="/images/unicon/img_assignment_area1.jpg" alt="image"></div>
			<div class="txt">
				<div class="tit"><strong class="jakarta">UNICON</strong> is the first country to promote the effective implementation of carbon neutrality <br class="pc_vw">It is a global integrated model development project. </div>
				<p>
					With the launch of the new climate regime under the Paris Agreement, there is an increasing need for the development and utilization of global-level emissions reduction and integrated assessment models. These models are essential for addressing various aspects such as setting emissions reduction targets based on Nationally Determined Contributions (NDCs), conducting the Global Stocktake (GST) to ensure transparency, and introducing the International Market Mechanism (IMM).
					<br>
					While both bottom-up and top-down models are utilized for greenhouse gas reduction systems analyses, both these types of models have their strengths and weaknesses. An integrated modeling approach that complement both is necessary.
					<br>
					In response to this need, the UNICON model project aims to develop a global integrated assessment model that integrates both top-down and bottom-up approaches. This model will allow for empirical analyses of the changes and diffusion of key mitigation technologies and support more efficient negotiations on international greenhouse gas reduction targets.
					
				</p>
			</div>
		</div>
	</div>
	
	<div class="assignment_area2">
		<div class="inner">
			<div class="dtit">Expected effect</div>
			<div class="tb">The UNICON project holds significance across scientific, technological, socioeconomic, and environmental dimensions..</div>
			<ul>
				<li>
					<div class="num">01</div>
					<div class="tit">Scientific and Technological Impact</div>
					<p>- Improvement of the accuracy of potential greenhouse gas reduction predictions and policy evaluations through the development of a global integrated assessment model that combines both top-down and bottom-up modules</p>
					<p>- Promotion of extended research through the establishment of a global greenhouse gas, energy technology, and economy database, as well as an integrated assessment model</p>
					<i><img src="/images/unicon/img_assignment_area2_01.jpg" alt="image"></i>
				</li>
				<li>
					<div class="num">02</div>
					<div class="tit">Socioeconomic Impact</div>
					<p>- Stimulation of greenhouse gas emission trading systems and international carbon market linkages</p>
					<p>- Improvement in the accuracy of greenhouse gas reduction target analysis and the efficiency of reduction policies resulting from enhanced predictive capabilities for global greenhouse gas reduction</p>
					<p>- Training of personnel for the enhancement and utilization of a global multi-regional integrated assessment model and integrated model UI management</p>
					<p>- Analysis of the impact of global climate change policies (such as international carbon markets and carbon border taxes) on the domestic economy, utilization of analytical results to establish response policies</p>
					<p>- Provision of information to institutions such as the Greenhouse Gas Inventory and Research Center of Korea and the Presidential Commission on Carbon Neutrality and Green Growth, for the establishment of climate change and carbon neutrality policies</p>
					<i><img src="/images/unicon/img_assignment_area2_02.jpg" alt="image"></i>
				</li>
				<li>
					<div class="num">03</div>
					<div class="tit">Socioenvironmental Impact</div>
					<p>- Improvement in the accuracy of environmental impacts through enhanced capabilities to predict global greenhouse gases reduction levels</p>
					<p>- Expectations for increased interest in climate change and carbon neutrality in the general public and media</p>
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
					<img src="/images/unicon/img_assignment_area3.svg" alt="Table of Development of Global Reduction Integrated Evaluation Model">
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

