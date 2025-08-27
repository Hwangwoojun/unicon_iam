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
	<div class="partnership" id='2025' style="display: none;">
		<div class="inner">

			<div class="box">
				<div class="tit">International Workshops</div>
				<div class="con">
					<ul>
						<c:forEach var="item" items="${arrInternationalList.list}">
							<li>
								<span>· ${item.subject}</span>${item.contents}
								<c:if test="${not empty item.re_name}">
									<img src="/uploaded/board/international/${item.re_name}">
								</c:if>
							</li>
						</c:forEach>
						<li><span>· 2025. 05. 31.</span>International Workshop on Linking Top-down and Bottom-up</li>
						<li><span>· 2025. 08. 22-23. (TBA)</span>International Workshop on Global Integrated Assessment Model (IAM) Development: Collaboration between China and Korea</li>
					</ul>
				</div>
			</div>

			<div class="box">
				<div class="tit">Domestic and International Academic Conferences</div>
				<div class="con">
					<ul>
						<li><span>· 2025. 06. 20.</span>(INT) The Korean Society of Climate Change Research Planning Session</li>
						<li><span>· 2025. 07. 03.</span>(INT) The Korea International Economic Association Summer Policy Seminar</li>
						<li><span>· 2025. 08. 22-23. (TBA)</span>(KOR) Korean Association of Environmental and Resource Economics Annual Conference</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="partnership" id='2024' style="display: none;">
		<div class="inner">

			<div class="box">
				<div class="tit">International Workshops</div>
				<div class="con">
					<ul>
						<c:forEach var="item" items="${arrInternationalList.list}">
							<li>
								<span>· ${item.subject}</span>${item.contents}
								<c:if test="${not empty item.re_name}">
									<img src="/uploaded/board/international/${item.re_name}">
								</c:if>
							</li>
						</c:forEach>
						<li><span>· 2024. 08. 14.</span>Korea-China IAM International Workshop on Climate Change (Hong Kong University of Science and Technology, Guangzhou Campus, China)</li>
						<li><span>· 2024. 10. 08.</span>India Carbon Neutral Policy (Online)</li>
						<li><span>· 2024. 11. 04-06.</span>2024 17th IAMC Annual Meeting (Yonsei University, Korea)</li>
						<li><span>· 2024. 11. 07.</span>International Workshop on IAM Development for Northeast Asia (Seoul, Korea)</li>
						<li><span>· 2024. 11. 08.</span>IAM International Workshop on Climate Change and Circular Economy (Seoul, Korea)</li>

					</ul>
				</div>
			</div>

			<div class="box">
				<div class="tit">Domestic and International Academic Conferences</div>
				<div class="con">
					<ul>
						<li><span>· 2024. 03. 28.</span>(KOR) The 90th Conference of the Korean Society of Transportation</li>
						<li><span>· 2024. 06.</span>(KOR) 2024 Korean Institute of Electrical Engineers Spring Conference</li>
						<li><span>· 2024. 06. 05. - 07.</span>(INT) GTAP 27th Annual Conference on Global Economic Analysis</li>
						<li><span>· 2024. 06. 20.</span>(KOR) 2024 Korean Society for Atmospheric Environment First Half Conference</li>
						<li><span>· 2024. 06. 26 - 27. </span>(INT) 45th IAEE International Conference</li>
						<li><span>· 2024. 07. 05.</span>(KOR) 2024 Korean Economic Association Summer Conference</li>
						<li><span>· 2024. 08. 20.</span>(KOR) 2024 Korea Resource Economics Association Summer Conference</li>
						<li><span>· 2024. 08. 26.</span>(INT) 13th Asian Association of Environmental and Resource Economics (AAERE) Conference</li>
						<li><span>· 2024. 08. 28. - 29.</span>(INT) 30th AIM International Workshop</li>
						<li><span>· 2024. 10.</span>(INT) INFORMS Annual Meeting</li>
						<li><span>· 2024. 10. 21. - 23.</span>(INT) International Conference on Sustainable Energy Policy</li>
						<li><span>· 2024. 11. 04. - 06. </span>(INT) 2024 17th IAMC Annual Meeting</li>
						<li><span>· 2024. 12. </span>(INT) 2024 American Physical Society International Conference</li>
					</ul>
				</div>
			</div>
			<div class="box">
				<div class="tit">MoU Signing</div>
				<div class="con">
					<ul>
						<li><span>· 2024. 12.</span>Hong Kong University of Science and Technology, Guangzhou Campus (China)</li>
					</ul>
				</div>
			</div>
			<!-- 			<div class="box">
                            <div class="tit">내부 및 자문 미팅</div>
                            <div class="con">
                                <ul>
                                </ul>
                            </div>
                        </div> -->
		</div>
	</div>
	<div class="partnership" id='2023' style="display: none;">
		<div class="inner">

			<div class="box">
				<div class="tit">국제 워크샵 개최</div>
				<div class="con">
					<ul>
						<c:forEach var="item" items="${arrInternationalList.list}">
							<li>
								<span>· ${item.subject}</span>${item.contents}
								<c:if test="${not empty item.re_name}">
									<img src="/uploaded/board/international/${item.re_name}">
								</c:if>
							</li>
						</c:forEach>
						<li><span>· 2023. 4. 24.</span>동북아 전력공급 모델링 (서울, 한국)</li>
						<li><span>· 2023. 5. 12~13.</span>글로벌 통합 평가 모델 개발 (AIT, 방콕, 태국)</li>
						<li><span>· 2023. 9. 29~30.</span>글로벌 통합 평가 모델 개발 (나라, 일본)</li>
						<li><span>· 2023. 11. 02.</span>산업 및 전력 부문 모델링 (서울, 한국)</li>

					</ul>
				</div>
			</div>

			<div class="box">
				<div class="tit">국내 및 해외 학술 컨퍼런스</div>
				<div class="con">
					<ul>
						<li><span>· 2023. 05. 12.</span>(국내) 한국혁신학회 춘계학술대회</li>
						<li><span>· 2023. 05. 28.</span>(해외) Asia Conference on Low
							Carbon Technology and Innovation</li>
						<li><span>· 2023. 06. 03.</span>(해외) 제12차 일본국제경제학회 춘계학술대회</li>
						<li><span>· 2023. 06. 14. – 16.</span>(해외) 26th GTAP Annual
							Conference on Global Economic Analysis</li>
						<li><span>· 2023. 06. 23.</span>(국내) 한국기후변화학회 상반기 학술대회</li>
						<li><span>· 2023. 06. 26. – 28.</span>(해외) 한국국제경제학회 정책 컨퍼런스</li>
						<li><span>· 2023. 11. 14. – 16.</span>(해외) 제16차 IAMC 연례회의</li>

					</ul>
				</div>
			</div>
			<div class="box">
				<div class="tit">MoU 서명</div>
				<div class="con">
					<ul>
						<li><span>· 2023. 02. 15.</span>호치민 경제대학 스마트시티연구소 (베트남)</li>
						<li><span>· 2023. 04. 24.</span>북경대학교 (중국)</li>
						<li><span>· 2023. 08. 24.</span>타슈켄트 AKFA University
							(우즈베키스탄)</li>

					</ul>
				</div>
			</div>
			<!-- 			<div class="box">
            <div class="tit">내부 및 자문 미팅</div>
            <div class="con">
                <ul>
                    <li><span>· 2023. 04. 24.</span>동북아 전력공급 모델링(한국, 서울)</li>
                    <li><span>· 2023. 05. 12.</span>글로벌 통합 평가 모델 개발 (AIT, 방콕, 태국)</li>
                    <li><span>· 2023. 09. 29.</span>글로벌 통합 평가 모델 개발 (일본 나라)</li>
                    <li><span>· 2023. 11. 02.</span>산업 전력 부분 모델링 (서울, 한국)</li>
                </ul>
            </div>
        </div> -->
		</div>
	</div>
	<div class="partnership" id='2022' style="display: none;">
		<div class="inner">

			<div class="box">
				<div class="tit">국제 워크샵 개최</div>
				<div class="con">
					<ul>
						<c:forEach var="item" items="${arrInternationalList.list}">
							<li><span>· ${item.subject}</span>${item.contents} <c:if
									test="${not empty item.re_name}">
								<img src="/uploaded/board/international/${item.re_name}">
							</c:if></li>
						</c:forEach>
						<li><span>· 2022. 10. 14.</span>글로벌 통합 평가 모델(IAM) 개발에 관한 국제
							컨퍼런스</li>
						<li><span>· 2022. 11. 21.</span>2022 글로벌 리더 포럼(세션 4: 탄소 중립 및
							IPCC 메시지)</li>
						<li><span>· 2022. 12. 20.</span>동북아 전력부문 모델링 국제워크숍</li>
						<li><span>· 2022. 12. 27.</span>글로벌 IAM 개발 및 기후 정책 연구에 관한 국제
							워크숍</li>
					</ul>
				</div>
			</div>

			<div class="box">
				<div class="tit">국내 및 해외 학술 컨퍼런스</div>
				<div class="con">
					<ul>
						<li><span>· 2022. 10. 14.</span>글로벌 통합 평가 모델(IAM) 개발에 관한 국제 컨퍼런스</li>
						<li><span>· 2022. 11. 21.</span>2022 글로벌 리더 포럼 (세션 4 : 탄소 중립 및 IPCC 메시지)</li>
						<li><span>· 2022. 12. 20.</span>동북아 력부분 모델링 국제 워크숍</li>
						<li><span>· 2022. 12. 27.</span>글로벌 IAM개발 및 기후 정책 연구에 관한 국제 워크숍</li>
					</ul>
				</div>
			</div>
			<div class="box">
				<div class="tit">MoU 서명</div>
				<div class="con">
					<ul>
						<li><span>· 2022. 10. 13.</span>아시아공과대학(AIT), 태국</li>
						<li><span>· 2022. 12. 23.</span>RITE, 일본</li>
					</ul>
				</div>
			</div>
			<!-- <div class="box">
				<div class="tit">내부 및 자문 미팅</div>
				<div class="con">
					<ul>

						<li><span>· 2022. 10. 14.</span>글로벌 통합 평가 모델(IAM) 개발에 관한 국제 컨퍼런스</li>
						<li><span>· 2022. 11. 21.</span>2022 글로벌 리더 포럼 (세션 4 : 탄소 중립 및 IPCC 메시지)</li>
						<li><span>· 2022. 12. 20.</span>동북아 력부분 모델링 국제 워크숍</li>
						<li><span>· 2022. 12. 27.</span>글로벌 IAM개발 및 기후 정책 연구에 관한 국제 워크숍</li>
						<li><span>· 2023. 04. 24.</span>동북아 전력공급 모델링(한국, 서울)</li>
						<li><span>· 2023. 05. 12.</span>글로벌 통합 평가 모델 개발 (AIT, 방콕, 태국)</li>
						<li><span>· 2023. 09. 29.</span>글로벌 통합 평가 모델 개발 (일본 나라)</li>
						<li><span>· 2023. 11. 02.</span>산업 전력 부분 모델링 (서울, 한국)</li>
					</ul>
				</div>
			</div> -->
		</div>
	</div>
</div>
<script type="text/javascript">
	$("#" + ${sNum}).css("display", "block");
</script>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

