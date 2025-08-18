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
	<div class="title"><?=$sName?></div>
	<div class="inner">
		<div class="researcher_top">
			<a href="/about/researcher.php" class="btn_list"></a>
			<div class="btn_page">
				<a href="/about/researcher_view.php" class="btn prev"></a>
				<a href="/about/researcher_view.php" class="btn next"></a>
			</div>
		</div>

		<c:set var="profId" value="${param.id}" />

	<!-- 정태용 교수님 약력 -->
		<c:if test="${profId eq 'jungTY'}">
		<div class="researcher_view" id="jungTY">
			<div class="info">
				<div class="name"><strong>정태용</strong> 교수</div>
				<b>연세대학교 국제학대학원 교수<br>
					국제학대학원 부원장
				</b>
				<p>02-2123-3594 (연구실)<br>
					tyjung00@yonsei.ac.kr
				</p>
			</div>
			<div class="career">
				<dl>
					<dt>학력</dt>
					<dd>
						<ul>
							<li><span>·  1991</span>경제학박사 미국 뉴저지주립대학 (Rutgers University), New Brunswick, NJ, USA</li>
							<li><span>·  1988</span>경제학석사 미국 뉴저지주립대학 (Rutgers University), New Brunswick, NJ, USA</li>
							<li><span>·  1985</span>경제학학사 서울대학교  무역학과</li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>이력</dt>
					<dd>
						<ul>
							<li><span>·  2015. 3 ~ 현재</span>연세대학교 국제학대학원 교수, 국제학대학원 부원장</li>
							<li><span>·  2013. 2 ~ 2015. 2</span>KDI 국제정책대학원, 교수 </li>
							<li><span>·  2007. 6 ~ 2013. 2</span>아시아개발은행, 주임 기후변화 전문가</li>
							<li><span>·  2010. 12 ~ 2012. 6</span>글로벌녹색성장연구소 (GGGI), 부소장</li>
							<li><span>·  2005. 12 ~ 2007. 6</span>世界銀行, 선임 에너지 이코노미스트</li>
							<li><span>·  1999. 4 ~ 2005.11</span>日本 地球環境戰略硏究機關, 기후정책연구부장</li>
							<li><span>·  1992. 3 ~ 1998.11</span>한국 에너지경제연구원, 연구위원</li>
							<li><span>·  1990. 8 ~ 1992.2</span>미국 통신협회, Associate Manager</li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>경력</dt>
					<dd>
						<ul>
							<li><span>·  2007.12 ~ 2008. 2</span>제  17대  대통령직  인수위원회, 국가경쟁력강화특별위원회, 기후변화 에너지대책 T/F, 상임자문위원</li>
							<li><span>·  2009.2 ~ 2010.7</span>대통령직속 녹색성장위원회, 에너지 기후변화분과위원회, 민간위원</li>
							<li><span>·  2010. 1 ~ 2021. 12</span>국회 기후변화포럼 이사</li>
							<li><span>·  2014. 8 ~ 2017. 4</span>대통령직속 통일준비위원회, 경제분과 전문위원</li>
							<li><span>·  2018 ~ 2023</span>Coordinating  Lead  Author,  Intergovernmental Panel  on Climate Change(IPCC), the 6th IPCC Assessment Report, UN</li>
							<li><span>·  2018. 6 ~ 2019. 12</span>안민포럼 회장</li>
							<li><span>·  2019. 1 ~ 2020. 12</span>한국기후변화학회 부회장</li>
							<li><span>·  2019. 5 ~ 2021. 4</span>대통령직속 국가기후환경회의, 국제분과위원회 전문위원</li>
							<li><span>·  2019. 9 ~</span>반기문재단, Sustainable Development Program, 디렉터</li>
							<li><span>·  2022. 3 ~</span>K-정책플랫폼, 원장</li>
							<li><span>·  2022. 3 ~ 2022. 5</span>제 20대 대통령직 인수위원회, 사회분과 자문위원</li>
							<li><span>·  2022.10~</span>대통력직속 탄소중립녹색성장위원회, 민간위원</li>
						</ul>
					</dd>
				</dl>
			</div>
		</div>
		</c:if>

		<!-- 김용건 교수님 약력 -->
		<c:if test="${profId eq 'kimYG'}">
		<div class="researcher_view" id="kimYG">
			<div class="info">
				<div class="name"><strong>김용건</strong> 교수</div>
				<b>연세대학교 국제학대학원 교수<br>
					ygkim@yonsei.ac.kr
				</b>
			</div>
			<div class="career">
				<dl>
					<dt>학력</dt>
					<dd>
						<ul>
							<li><span>·  1996</span>한국과학기술원 환경경제학 박사</li>
							<li><span>·  1992</span>한국과학기술원 경역과학 석사</li>
							<li><span>·  1989</span>한국과학기술원 경영학 학사</li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>이력</dt>
					<dd>
						<ul>
							<li><span>·  2014 ~ 현재</span>연세대학교 국제학대학원 교수</li>
							<li><span>·  1996 ~ 2024</span>한국환경연구원 수석연구위원</li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>경력</dt>
					<dd>
						<ul>
							<li><span>·  2010 ~ 2023</span>IPCC 제5차 및 제6차 평가보고서 WG-III 주요 저자</li>
							<li><span>·  2016 ~ 2018</span>환경부 온실가스 인벤토리 및 연구센터 센터장</li>
							<li><span>·  2014 ~ 2016</span>환경부 온실가스 감축을 위한 통합 상향식-하향식 모델링 프로젝트 책임자</li>
							<li><span>·  2013 ~ 2014</span>한국환경연구원 기획조정실장</li>
							<li><span>·  2008 ~ 2013</span>한국환경연구원 기후경제연구실장</li>
							<li><span>·  2006 ~ 2008</span>OECD 환경전망보고서 CGE 분석 자문관</li>
							<li><span>·  2005 ~ 2006</span>한국환경연구원 기후변화연구센터 센터장</li>
							<li><span>·  1997 ~ 2016</span>대한민국 정부대표단 일원으로 유엔기후변화협약 당사국총회(COP) 및 OECD AIXG 회의 등 참석</li>
						</ul>
					</dd>
				</dl>
			</div>
		</div>
		</c:if>

		<!-- 구윤모 교수님 약력 -->
		<c:if test="${profId eq 'kooYM'}">
			<div class="researcher_view" id="kooYM">
				<div class="info">
					<div class="name"><strong>구윤모</strong> 교수</div>
					<b>서울대학교 공학전문대학원 부교수<br>
					</b>
					<p>02-880-2269 (연구실)<br>
						yyounmo@snu.ac.kr
					</p>
				</div>
				<div class="career">
					<dl>
						<dt>학력</dt>
						<dd>
							<ul>
								<li><span>·  2012</span>서울대학교 기술경영경제정책 박사</li>
								<li><span>·  2007</span>한국과학기술원 전기및전자공학 학사</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>이력</dt>
						<dd>
							<ul>
								<li><span>·  2020. 3 ~ 현재</span>서울대학교 공학전문대학원 부교수</li>
								<li><span>·  2022. 8 ~ 2023. 7</span>Georgia Institute of Technology (Industrial System Engineering) 방문교수</li>
								<li><span>·  2016. 3 ~ 현재</span>서울대학교 공학전문대학원 & 공과대학 기술경영경제정책 협동과정 조교수</li>
								<li><span>·  2014. 8 ~ 2016. 2</span>한국환경정책·평가연구원 부연구위원</li>
								<li><span>·  2013. 8 ~ 2014. 7</span>Georgia Institute of Technology (Industrial System Engineering) 방문연구원</li>
								<li><span>·  2012. 9 ~ 2013. 6</span>서울대학교 공학연구소 선임연구원</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>경력</dt>
						<dd>
							<ul>
								<li><span>·  2022. 6 ~ 현재</span>탄소중립 이행을 위한 글로벌 산업부문 모형 개발, 한국환경산업기술원</li>
								<li><span>·  2022. 6 ~ 현재</span>2050 탄소중립 이행 시나리오 평가를 위한 전력-수송 연계 모형, 한국연구재단</li>
								<li><span>·  2021 ~ 현재</span>사단법인 한국환경경제학회 이사</li>
								<li><span>·  2018 ~ 현재</span>사단법인 한국혁신학회 등기이사/학술위원장</li>
								<li><span>·  2022</span>(산업통상자원부) 10차 전력수급기본계획 정책WG 위원</li>
								<li><span>·  2019 ~ 2021</span>(대통령직속) 북방경제협력위원회 에너지 전문위원회 위원</li>
								<li><span>·  2019 ~ 2020</span>(산업통상자원부) 9차 전력수급기본계획 정책WG 위원</li>
								<li><span>·  2018 ~ 2020</span>(산업통상자원부) 에너지정책전문위원회 위원</li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
		</c:if>

		<!-- 안영환 교수님 약력 -->
		<c:if test="${profId eq 'ahnYH'}">
			<div class="researcher_view" id="ahnYH">
				<div class="info">
					<div class="name"><strong>안영환</strong> 교수</div>
					<b>숙명여자대학교 부교수<br>
					</b>
					<p>02-710-9207 (연구실)<br>
						yh.ahn@sm.ac.kr
					</p>
				</div>
				<div class="career">
					<dl>
						<dt>학력</dt>
						<dd>
							<ul>
								<li><span>·  2002</span>한국과학기술원 경영공학 박사</li>
								<li><span>·  1996</span>한국과학기술원 산업경영 석사</li>
								<li><span>·  1993</span>한국과학기술원 경영정책 학사</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>경력</dt>
						<dd>
							<ul>
								<li><span>·  2019. 9 ~ 현재</span>숙명여자대학교 부교수</li>
								<li><span>·  2016. 4 ~ 2019. 8</span>에너지경제연구원 기후변화연구팀 선임연구위원/팀장</li>
								<li><span>·  2011. 6 ~ 2016. 3</span>International Institute for Applied Systems Analysis (IIASA) Air Quality and Greenhouse Gases Program/Research Scholar</li>
								<li><span>·  2010. 3 ~ 2011. 6</span>온실가스 종합정보센터 감축목표팀 팀장</li>
								<li><span>·  2006. 4 ~ 2011. 6</span>에너지경제연구원 연구위원</li>
								<li><span>·  2005. 2 ~ 2006. 2</span>INSEAD 박사후과정 연구원</li>
								<li><span>·  2002. 3 ~ 2004. 12</span>㈜에코프론티어 환경 및 에너지 사업부 부장</li>
								<li><span>·  1999. 11 ~ 2000. 7</span>United Nations University/Institute of Advanced Studies (UNU/IAS) Ph.D. Fellow</li>
								<li><span>·  2000. 2 ~ 2000. 7</span>도쿄공업대학 시간제 방문연구원</li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
		</c:if>

		<!-- 장 훈 박사님 약력 -->
		<c:if test="${profId eq 'jangH'}">
			<div class="researcher_view" id="jungTY">
				<div class="info">
					<div class="name"><strong>장 훈</strong> 박사</div>
					<b>한국환경연구원 기후대기연구본부장<br>
					</b>
				</div>
				<div class="career">
					<dl>
						<dt>학력</dt>
						<dd>
							<ul>
								<li>준비중입니다.</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>이력</dt>
						<dd>
							<ul>
								<li>준비중입니다.</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>경력</dt>
						<dd>
							<ul>
								<li>준비중입니다.</li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
		</c:if>
	</div>	
</div>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

