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
		<div class="researcher_view">
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
	</div>	
</div>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

