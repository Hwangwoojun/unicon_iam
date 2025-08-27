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
	<div class="inner">
		<div class="greetings_area1">"Development of a Global Integrated Evaluation Model for Carbon Neutrality Transition"<br>A collaborative research project conducted by Yonsei University, Korea Environmental Institute, <br>Seoul National University, and Sookmyung Women's University.</div>
		<div class="uni_list">
			<div class="box">
				<div class="logo"><img src="/images/unicon/img_subuni.svg" alt="image"></div>
				<div class="cont">
					<div class="coming">
						Climate change is one of the most significant global challenges we face today,
						requiring international collaboration and policy decisions grounded firmly in scientific evidence.
						Under the Paris Agreement, countries set their own emission reduction targets, known as Nationally Determined Contributions (NDCs).
						Through mechanisms like the Global Stocktake (GST) and International Carbon Markets (IMM),
						the global community regularly evaluates progress to ensure transparency and accountability toward achieving carbon neutrality.
						<br><br>
						Integrated analytical tools are essential to systematically assess the effectiveness of greenhouse gas emission reductions and derive policy implications.
						While existing bottom-up or top-down models each have their advantages,
						the lack of interconnectivity between these approaches often results in gaps when conducting comprehensive policy analysis.
						<br><br>
						UNICON project addresses this gap through a global integrated model framework that links a top-down economic model with bottom-up sectoral models.
						By enabling economic analysis that reflects technological developments, diffusion, and emission reduction pathways across various sectors,
						we aim to provide scientifically robust evidence supporting the feasibility and effectiveness of policies toward achieving carbon neutrality.
						<br><br>
						We look forward to ongoing cooperation and dialogue, ensuring that UNICON contributes meaningfully toward a carbon-neutral society.
						We sincerely appreciate your continued interest and support.
						<br><br>
						Thank you.
					</div>
				</div>
			</div>
		</div>
	</div>
</div>	
</script>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

