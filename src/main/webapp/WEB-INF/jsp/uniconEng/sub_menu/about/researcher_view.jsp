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

		<c:if test="${profId eq 'jungTY'}">
		<div class="researcher_view" id="jungTY">
			<div class="info">
				<div class="name"><strong>Jung <br/> Tae Yong</strong></div>
				<b>Professor, Graduate School of International Studies,<br>
					Yonsei University
				</b>
				<p>+82-2-2123-3594 (Office)<br>
					tyjung00@yonsei.ac.kr
				</p>
			</div>
			<div class="career">
				<dl>
					<dt>Education</dt>
					<dd>
						<ul>
							<li><span>·  1991</span>Ph. D. Economics, Rutgers, The State University of New Jersey, New Bruinswick, NJ, USA</li>
							<li><span>·  1988</span>MA. Economics, Rutgers, The State University of New Jersey, New Bruinswick, NJ, USA</li>
							<li><span>·  1985</span>BA.Economics, Seoul National University, Seoul, Republic of Korea</li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>Work <br/> Experience</dt>
					<dd>
						<ul>
							<li><span>·  2023. 2 - </span>Associate Dean & Director, Center for International Studies, Graduate School of International Studies, Yonsei University, Republic of Korea</li>
							<li><span>·  2015. 3 - </span>Professor, Graduate School of International Studies, Yonsei University, Republic of Korea</li>
							<li><span>·  2013. 2 - 2015. 2</span>Professor, KDI School of Public Policy & Management, Republic of Korea</li>
							<li><span>·  2007. 6 - 2013. 2</span>Principal Climate Change Specialist, East Asia Regional Department, Asian Development Bank (ADB), Philippines</li>
							<li><span>·  2010. 12 - 2012. 6</span>Deputy Executive Director, Global Green Growth Institute (GGGI),Republic of Korea</li>
							<li><span>·  2005. 12 - 2007. 6</span>Senior Energy Economist, ESMAP, Energy, Transport & Water Department, World Bank, USA</li>
							<li><span>·  1999. 4 - 2005.11</span>Project Leader, Climate Policy Project ,Institute for Global Environmental Strategies (IGES), Japan</li>
							<li><span>·  1992. 3 - 1998.11</span>Senior Fellow & Director, Energy Modeling Division, Korea Energy Economics Institute (KEEI), Republic of Korea</li>
							<li><span>·  1990. 8 - 1992.2</span>Associate Manager, National Exchange Carrier Association, Whippany, USA</li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>Professional <br/> Activities</dt>
					<dd>
						<ul>
							<li><span>·  2024. 1 – 2025. 1</span>EDCF Advisory Committee Member, Ministry of Economy and Finance, Government of Republic of Korea</li>
							<li><span>·  2023. 12 – 2025.12</span>ESG Committee Member, Korea Exim Bank</li>
							<li><span>·  2023. 11 – 2026.10</span>UNESCO Korea Committee, ESD member</li>
							<li><span>·  2022. 10 - </span>Member, International Cooperation Sub-Committee, Presidential Council on Carbon Neutrality and Green</li>
							<li><span>·  2022. 4 - </span>Editorial Board Member, Asia-Pacific Sustainable Development Journal, UNESCAP</li>
							<li><span>·  2022. 3 - </span>President, K-Policy Platform</li>
							<li><span>·  2021. 3 - </span>Board Member, World Wide Fund for Nature (WWF), Korea</li>
							<li><span>·  2019. 9 - </span>Director, Sustainable Development Program, Ban Ki-moon Foundation</li>
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
					<div class="name"><strong>Kim<br/> Young-Gun</strong></div>
					<b>Professor, Graduate School of International Studies, Yonsei University<br/><br/>
						ygkim@yonsei.ac.kr
					</b>
				</div>
				<div class="career">
					<dl>
						<dt>Education</dt>
						<dd>
							<ul>
								<li><span>·  1996</span>Ph.D. in Environmental Economics, Korea Advanced Institute of Science and Technology</li>
								<li><span>·  1992</span>M.A. in Management Science, Korea Advanced Institute of Science and Technology </li>
								<li><span>·  1989</span>B.B.A. in Business Administration, Seoul National University (SNU)</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>Research and <br/> Academic <br/> Employment</dt>
						<dd>
							<ul>
								<li><span>·  2024</span>Full-Time Professor, Graduate School of International Studies (GSIS), Yonsei University, Seoul</li>
								<li><span>·  1996 - 2024</span>Chief Research Fellow, Korea Environment Institute (KEI)</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>Professional <br/> Services</dt>
						<dd>
							<ul>
								<li><span>·  2010 - 2023</span>Lead author for IPCC AR5 and AR6 WG-III</li>
								<li><span>·  2016 - 2018</span>President, Greenhouse Gas Inventory and Research Center, Ministry of Environment</li>
								<li><span>·  2014 - 2016</span>Project Leader, Integrated Top-down and Bottom-up GHG Mitigation Modeling for Korea, Ministry of Environment</li>
								<li><span>·  2013 - 2014</span>Director, Office of Planning and Coordination, Korea Environment Institute (KEI)</li>
								<li><span>·  2008 - 2013</span>Director, Climate Economics Division, Korea Environment Institute (KEI)</li>
								<li><span>·  2006 - 2008</span>Consultant, Environment Directorate, OECD CGE modeling for OECD Environmental Outlook</li>
								<li><span>·  2005 - 2006</span>Director, Climate Change Research Division, Korea Environment Institute (KEI)</li>
								<li><span>·  1997 - 2016</span>Government delegation of Korea for Climate Change Negotiation (most of COP meetings, Subsidiary Body meetings and OECD AIXG meetings)</li>
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
					<div class="name"><strong>Koo <br/> Yoonmo</strong></div>
					<b>Associate Professor, Graduate School of Engineering Practice (GSEP), Seoul National University<br/>
					</b>
					<p>+82-2-880-2269 (Office)<br>
						yyounmo@snu.ac.kr
					</p>
				</div>
				<div class="career">
					<dl>
						<dt>Education</dt>
						<dd>
							<ul>
								<li><span>·  2012</span>Ph. D. in Engineering (Technology Policy), Seoul National University</li>
								<li><span>·  2007</span>B. S. in Engineering (Electrical Engineering), Korea Advanced Institute of Science & Technology (KAIST)</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>Work <br/> Experiences</dt>
						<dd>
							<ul>
								<li><span>·  2020. 3 - Present</span>Associate Professor, SNU GSEP</li>
								<li><span>·  2022. 8 - 2023. 7</span>Visiting Professor,  ISyE, GA Tech</li>
								<li><span>·  2016. 3 – 2020. 2</span>Assistant Professor, SNU GSEP</li>
								<li><span>·  2014. 8 - 2016. 2</span>Research Fellow, Korea Environment Institute</li>
								<li><span>·  2013. 8 - 2014. 7</span>Visiting Researcher, ISyE, GA Tech</li>
								<li><span>·  2012. 9 - 2013. 7</span>Senior Researcher, SNU ERI</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>Services</dt>
						<dd>
							<ul>
								<li><span>·  2022. 6 - Present</span>Development of a Global Industry Sector Model for Carbon Neutrality Implementation, Korea Environmental Industry & Technology Institute</li>
								<li><span>·  2022. 6 - Present</span>Development of an Integrated Power-Transport Sector Model for Evaluating 2050 Carbon Neutrality Scenarios, National Research Foundation of Korea</li>
								<li><span>·  2021 - Present</span>Member of the Board of Directors, Korean Environmental Economics Association</li>
								<li><span>·  2018 - Present</span>Registered Director and Chair of the Academic Committee, Korean Society for Innovation</li>
								<li><span>·  2022</span>Member, Policy Working Group for the 10th Basic Plan for Long-term Electricity Supply and Demand, Ministry of Trade, Industry and Energy (MOTIE)</li>
								<li><span>·  2019 - 2021</span>Member, Energy Expert Committee, Presidential Committee on Northern Economic Cooperation</li>
								<li><span>·  2019 - 2020</span>Member, Policy Working Group for the 9th Basic Plan for Long-term Electricity Supply and Demand, Ministry of Trade, Industry and Energy (MOTIE)</li>
								<li><span>·  2018 - 2020</span>Member, Energy Policy Advisory Committee, Ministry of Trade, Industry and Energy (MOTIE)</li>
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
					<div class="name"><strong>Ahn <br/>Young-hwan</strong></div>
					<b>Associate Professor, Sookmyung Women’s University<br/>
					</b>
					<p>+82-2-710-9207 (Office)<br/>
						yh.ahn@sm.ac.kr
					</p>
				</div>
				<div class="career">
					<dl>
						<dt>Education</dt>
						<dd>
							<ul>
								<li><span>·  2002</span>Ph.D. in Management Engineering, Korea Advanced Institute of Science and Technology (KAIST)</li>
								<li><span>·  1996</span>M.S. in Industrial Management, Korea Advanced Institute of Science and Technology (KAIST)</li>
								<li><span>·  1993</span>B.S. in Management Policy, Korea Advanced Institute of Science and Technology (KAIST)</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>Professional <br/> Experience</dt>
						<dd>
							<ul>
								<li><span>·  2019. 9 - Present</span>Associate Professor, Sookmyung Women’s University</li>
								<li><span>·  2016. 4 - 2019. 8</span>Senior Research Fellow / Team Leader, Climate Change Research Team, Korea Energy Economics Institute (KEEI)</li>
								<li><span>·  2011. 6 - 2016. 3</span>Research Scholar, Air Quality and Greenhouse Gases Program, International Institute for Applied Systems Analysis (IIASA)</li>
								<li><span>·  2010. 3 - 2011. 6</span>Team Leader, GHG Reduction Target Team, Greenhouse Gas Inventory and Research Center of Korea (GIR)</li>
								<li><span>·  2006. 4 - 2011. 6</span>Research Fellow, Korea Energy Economics Institute</li>
								<li><span>·  2005. 2 - 2006. 2</span>Postdoctoral Research Fellow, INSEAD</li>
								<li><span>·  2002. 3 - 2004. 12</span>Manager, Environment and Energy Division, Eco-Frontier Co., Ltd.</li>
								<li><span>·  2000. 2 - 2000. 7</span>Visiting Researcher (Part-time), Tokyo Institute of Technology</li>
								<li><span>·  1999. 11 - 2000. 7</span>Ph.D. Fellow, United Nations University / Institute of Advanced Studies (UNU/IAS)</li>
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
					<div class="name"><strong>Chang Hoon</strong></div>
					<b>Director General of the Climate and Air Quality Research Group,
						Korea Environment Institute (KEI)<br/>
					</b>
				</div>
				<div class="career">
					<dl>
						<dt>Education</dt>
						<dd>
							<ul>
								<li>In ready.</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>Work <br/> Experiences</dt>
						<dd>
							<ul>
								<li>In ready.</li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt>Services</dt>
						<dd>
							<ul>
								<li>In ready.</li>
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

