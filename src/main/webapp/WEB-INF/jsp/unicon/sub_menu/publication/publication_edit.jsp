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

			<div class="board_view" id="29" style="display: none;">
				<div class="tit">
					Environmental time-of-use scheme: Strategic leveraging of financial
					and environmental incentives for greener electric vehicle charging
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.24</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_014.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 40px;">If
							charged with green electricity, electric vehicles (EVs) can
							contribute greatly toward mitigation of greenhouse gas (GHG)
							emissions. To promote greener EV charging practices, this study
							proposes the environmental time-of-use (E-ToU) which provides
							time-varying prices and GHG intensity signals. Specifically, in
							E-ToU, GHG intensity is used as a nudge to steer drivers’
							charging behavior, providing a mixed financial-environmental
							incentive. Conjoint-based choice experiments were conducted with
							participation of 1220 South Korean drivers (including 129 EV
							owners) to simulate EV charging under this novel scheme. Unit
							commitment was utilized to determine time-varying prices and GHG
							intensity, as well as evaluate the effectiveness of E-ToU. The
							results indicated that both charging costs and GHG intensity
							influenced the charging decisions (timing) of EV users. The E-ToU
							shifted EV charging to renewable-abundant daytime, reducing EV
							charging costs by 14.1 % and GHG emission from EV charging by
							15.7 %. Additionally, it reduced the generation costs by 2.2 %,
							GHG emissions by 1.5 %, and renewable energy curtailments by 2.5
							% in the power system. Notably, E-ToU outperformed flat-rate/ToU
							with respect to all evaluated metrics, highlighting its
							effectiveness. Therefore, this study recommends the mixed
							financial-environmental incentive approach for generating
							synergistic co-benefits for sustainability of power and
							transportation sectors.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="javascript:void(0);">이전글이 없습니다.</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Vehicle-to-grid
							as a competitive alternative to energy storage in a
							renewable-dominant power system: An integrated approach
							considering electric vehicle drivers and power system</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="28" style="display: none;">
				<div class="tit">
					Vehicle-to-grid as a competitive alternative to energy storage in a
					renewable-dominant power system: An integrated approach considering
					electric vehicle drivers and power system
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.25</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_037.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 41px;">Vehicle-to-grid
							(V2G) technology, which enables bidirectional power flow between
							electric vehicles (EVs) and power grids, is a possible solution
							for integrating EVs and renewable energy (RE) into the power
							system. While EV drivers are indispensable components for the V2G
							applications, the extant power system studies have underexamined
							the willingness of EV drivers to participate in V2G. In addition,
							few studies investigate whether the small-scale and time-varying
							V2G supply can replace utility-level energy storage. Given this
							background, this study combined discrete choice experiments with
							energy storage capacity expansion planning (ES-CEP) to simulate
							time-varying V2G participation and effectiveness. The choice
							experiments identified drivers’ preferences for V2G, which was
							used to simulate V2G participation under different compensation
							schemes. Time-varying V2G participation was integrated into
							ES-CEP for renewable-dominant power system to assess the
							potential of V2G to replace ES at the utility scale. The results
							showed that most drivers were unlikely to engage in V2G, although
							this reluctance decreased during the night. Higher guaranteed
							state-of-charge, accessible V2G facilities, and monetary
							enrollment compensation encouraged the participation. The ES-CEP
							results showed that, even with a limited V2G (4.5–15.3 % of EV
							drivers), V2G significantly reduced the optimal ES capacity
							(36.5–45.6 % for power and 39.6–60.6 % for energy), shaved peak
							netload by 18.5 %, and saved the total cost by 3.35 %, even after
							accounting for V2G enrollment compensation and battery
							degradation. EVs that charged during the daytime and participated
							in V2G at night were the most utilized, resulting in 0.92 % of
							annual battery aging, but generated a profit of 636,749 KRW (553
							USD). The findings of this study underscore the importance of a
							suitable compensation scheme for V2G and supplementary measures
							for incentivizing EV charging during off-peak hours, as these
							elements are essential for the successful implementation of V2G.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Environmental
							time-of-use scheme: Strategic leveraging of financial and
							environmental incentives for greener electric vehicle charging</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Forecasting of
							changes in electricity consumption due to electric vehicle
							diffusion in South Korea: Development of integrated model
							considering diffusion and macroeconometric and innovation
							diffusion model</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="27" style="display: none;">
				<div class="tit">
					Forecasting of changes in electricity consumption due to electric
					vehicle diffusion in South Korea: Development of integrated model
					considering diffusion and macroeconometric and innovation diffusion
					model
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.26</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_036.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 42px;">Electrification
							is on the increase globally. The transportation sector is being
							electrified to reduce greenhouse gas emissions. South Korea aims
							to diffuse 8.3 million battery electric vehicles (BEVs) by 2040
							to reduce emissions in the transportation sector. However, BEV
							diffusion policies have not been considered for BEVs' electricity
							consumption. Given that the rapid diffusion of BEVs significantly
							increases the electricity demand, forecasting BEVs' electricity
							consumption is necessary to inform electricity production plans.
							Furthermore, electricity is produced through various energy
							sources, and electricity prices and consumption are affected;
							therefore, forecasts that reflect the overall energy market are
							needed. This study presents a forecasting model for BEV demand
							and energy consumption by combining it with a macroeconometric
							model that reflects the overall energy market and socioeconomic
							impact using an innovation diffusion model. Incorporating
							electricity prices and renewable energy consumption derived from
							the macroeconometric model, annual BEV demand and electricity
							consumption are predicted. Moreover, BEV demand is more diffused
							and slower when forecasted using the Generalized Bass model with
							electricity prices and renewable energy consumption, compared to
							forecast without these factors, and the predictive power of BEVs
							is superior to that forecasted using the Bass Model alone.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Vehicle-to-grid
							as a competitive alternative to energy storage in a
							renewable-dominant power system: An integrated approach
							considering electric vehicle drivers and power system</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Analyzing
							community acceptance of hydrogen refueling station in South
							Korea: Discrete choice experiment approach</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="26" style="display: none;">
				<div class="tit">
					Analyzing community acceptance of hydrogen refueling station in
					South Korea: Discrete choice experiment approach
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.27</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_035.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 43px;">최근
							탄소 중립 달성을 위해 한국을 포함한 전 세계 국가들은 수소를 차세대 청정 에너지원으로 주목하고 있다. 수소 에너지를
							우리 사회 전반에 확산시키기 위해서는 기술적 불확실성을 해소하고, 개개인이 수소 기술을 받아들일 수 있는
							사회적･경제적 기반을 마련하는 것이 선행되어야 한다. 국내 수소자동차의 높은 보급률을 고려할 때, 지역 사회의 수용성
							문제를 해결하고 수소충전소 인프라를 확장하는 것이 중요하다. 본 연구는 한국 시민들을 대상으로 수소충전소 인프라에
							대한 지역 사회의 수용성을 측정하기 위해 이산선택실험을 활용하였고, 베이지안 로짓 모델을 적용하였다. 우리는
							수소충전소 건설 프로젝트와 시민 수용성에 영향을 미치는 세부 속성에 대한 한계수용의사액을 정량적으로 분석하였다. 추정
							결과를 바탕으로, 지역 사회의 수용성을 높이는데 기여하는 요인을 식별하고, 수소충전소 건설의 진행에 있어 기업과
							정부를 위한 적절한 전략을 제안하였다. 연구 결과에 따르면, 충전소 건설과 관련된 의사결정에서 사람들에게 가장 중요한
							요소는 보조금의 수준이었으며, 그 다음으로 충전소와 실제 주거 지역 간의 거리와 건설 주체가 중요하게 작용하였다.
							반면, 수소의 생산 방식이나 충전소 내 대형 수소탱크의 유무와 같은 기술적인 속성에는 시민들이 반응하지 않았다. 본
							연구의 결과는 수소충전소 인프라 확장과 관련된 유사한 장벽에 직면한 국가와 지역사회에 적용될 수 있다. 본 연구에서
							추정된 한계수용의사액은 수소충전소 건설에 대한 비용-편익 분석을 수행하고, 적절한 보조금 수준을 결정하는 데 활용될
							수 있다.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Forecasting of
							changes in electricity consumption due to electric vehicle
							diffusion in South Korea: Development of integrated model
							considering diffusion and macroeconometric and innovation
							diffusion model</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">전기•수소 대형 화물차의
							경제성 및 환경성 분석</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="25" style="display: none;">
				<div class="tit">
					전기•수소 대형 화물차의 경제성 및 환경성 분석
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.28</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_041.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 44px;">국내
							수송부문 온실가스 배출량 중 도로 부문의 비중은 약 97%로 탄소중립 달성을 위한 친환경차 전환이 추진되고 있다.
							특히 대형 화물차는 연간 주행거리가 길고 대부분 경유차로 구성된 특성상 배출 비중이 높아 친환경차 전환이 필요하다.
							그러나 화물차는 자가용 승용차와 다르게 이윤 창출을 목적으로 운행되는 차량임에 따라 전환 시 경제성 확보가 중요하다.
							본 연구는 친환경 대형 화물차의 총소유비용을 분석하고, 경유 화물차와 친환경 화물차의 총소유비용이 등가가 되는
							‘총소유비용 패리티’ 도달 시점을 2040년까지 전망하였다. 또한, 연료주기 분석을 통해 친환경차 전환의 궁극적
							목표인 온실가스 감축 효과를 비교하였다. 총소유비용 분석 결과 연료비용이 친환경 화물차의 총소유비용 패리티 도달
							시점에 가장 큰 영향을 미치는 것으로 나타났다. 이에 친환경 화물차 전환을 위해서는 내연기관 대비 경쟁력 있는 연료
							가격 형성이 중요하며, 수소트럭과 전기트럭을 상호보완적으로 보급하는 정책이 필요하다. 그리고 온실가스 감축효과는 국내
							발전원 비중 및 수소 생산방식에 따라 저감량이 상이하므로, 친환경 화물차 전환과 더불어 연료 생산단계의 이산화탄소
							배출을 줄이기 위한 노력이 병행되어야 한다.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Analyzing
							community acceptance of hydrogen refueling station in South
							Korea: Discrete choice experiment approach</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">The Economic
							Impacts of Implementing Net Zero Policies in Korea: A Combined
							Top-down and Bottom-up Approach</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="24" style="display: none;">
				<div class="tit">
					The Economic Impacts of Implementing Net Zero Policies in Korea: A
					Combined Top-down and Bottom-up Approach
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.29</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_013.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 45px;">The
							South Korean government aims to achieve carbon neutrality by
							2050. Here, this study analyzed the economic efforts of the
							net-zero policy by integrating top-down and bottom-up models; The
							UNIfied Climate Options Nexus (UNICON) within this study aims to
							create a link between the 26 sectors from the bottom-up model and
							the 85 sectors of the top-down model. Positive mathematical
							programming methods were used to ensure consistency between the
							top-down and bottom-up models within the base year. The study
							found that the total reduction rate was slightly higher in the
							integrated model than in the computable general equilibrium (CGE)
							stand-alone model. In both models, the reduction rate increased
							when the carbon tax increased, but the marginal reduction rate
							was considerably lowered, and the reduction rate did not exceed
							80% even with the high level of a carbon tax. The technological
							change of the linked industries in the integrated model showed
							that the steel industry had the highest emission reduction. When
							estimating costs for reducing GHGs, results can vary based on the
							technological changes under consideration.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">전기•수소 대형 화물차의
							경제성 및 환경성 분석</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Effects of
							Sector Coupling on the Decarbonization Potential of the
							Manufacturing Sector-an Integration of the Power, Hydrogen, and
							Manufacturing Sectors</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="23" style="display: none;">
				<div class="tit">
					Effects of Sector Coupling on the Decarbonization Potential of the
					Manufacturing Sector-an Integration of the Power, Hydrogen, and
					Manufacturing Sectors
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.30</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_034.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 46px;">Sector
							coupling emerges as a potentially efficient strategy for emission
							reduction, particularly when the power sector is sufficiently
							decarbonized. This study aims to explore the effects of sector
							coupling on the decarbonization of the manufacturing sector. This
							study also develops the hybrid energy system model by integrating
							bottom-up energy system models for the power and manufacturing
							sectors with the computable general equilibrium model. The hybrid
							model helps to explain the integration of the power, hydrogen,
							and manufacturing sectors. The manufacturing sector is
							electrified and integrated with other sectors based on its use of
							decarbonized electricity and electrolysis hydrogen. With a carbon
							tax rate of 200,000 Korean won (161 U S. dollars) per ton of
							carbon dioxide equivalent, the percentage of electricity in the
							manufacturing sector's energy mix is expected to increase from 30
							% to 46 % by 2050 if electrolysis hydrogen is considered.
							Moreover, emission reduction from sector coupling accounts for
							more than 50 % of the total emission reduction in the
							manufacturing sector. If policymakers consider the overall
							benefit of decarbonizing the power sector and aid the development
							of power-to-X technologies, sector coupling can contribute the
							decarbonization of the manufacturing sector significantly.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">The Economic
							Impacts of Implementing Net Zero Policies in Korea: A Combined
							Top-down and Bottom-up Approach</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Application of
							the domain adaptation method using a phenological classification
							framework for the land-cover classification of North Korea</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="22" style="display: none;">
				<div class="tit">
					Application of the domain adaptation method using a phenological
					classification framework for the land-cover classification of North
					Korea
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.31</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_030.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 47px;">Efforts
							to achieve carbon neutrality are global, encompassing a wide
							range of factors. For the estimation of greenhouse gas emissions
							from the agriculture, forestry, and other land use (AFOLU)
							sector, the Intergovernmental Panel on Climate Change has
							proposed an advanced method that requires Approach 3, the highest
							level of suggested method, of activity data. Accordingly, we
							propose a phenological classification framework (PCF) that can
							perform land-cover classification by training the climatic
							repeatability of the annual cycle using a U-Net deep learning
							model. Additionally, the domain adaptation (DA) method can be
							applied to classify areas with insufficient data. We applied
							these methods to classify North Korea (i.e., using South Korean
							data), with an accuracy of 81.31%; overall this effort culminated
							in the simultaneous classification of the Korean Peninsula.
							Domain distribution comparison showed that the results for the
							two regions were similar. The PCF and DA methods proposed in this
							study allow for annual production of a land-cover map and change
							matrix, regardless of the presence or absence of data. The
							application of these methods is expected to provide a scientific
							basis for policy decisions that can facilitate the global
							attainment of carbon neutrality.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Effects of
							Sector Coupling on the Decarbonization Potential of the
							Manufacturing Sector-an Integration of the Power, Hydrogen, and
							Manufacturing Sectors</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Development of a
							Greenhouse Gases and Air Pollution Interactions and Synergies
							Model for Korea (GAINS-Korea)</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="21" style="display: none;">
				<div class="tit">
					Development of a Greenhouse Gases and Air Pollution Interactions
					and Synergies Model for Korea (GAINS-Korea)
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.32</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_028.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 48px;">This
							study aimed to create Greenhouse Gas - Air Pollution Interactions
							and Synergies (GAINS)-Korea, an integrated model for evaluating
							climate and air quality policies in Korea, modeled after the
							international GAINS model. GAINS-Korea incorporates specific
							Korean data and enhances granularity for enabling local
							government-level analysis. The model includes source-receptor
							matrices used to simulate pollutant dispersion in Korea,
							generated through CAMx air quality modeling. GAINS-Korea's
							performance was evaluated by examining different scenarios for
							South Korea. The business as usual scenario projected emissions
							from 2010 to 2030, while the air quality scenario included
							policies to reduce air pollutants in line with air quality and
							greenhouse gas control plans. The maximum feasible reduction
							scenario incorporated more aggressive reduction technologies
							along with air quality measures. The developed model enabled the
							assessment of emission reduction effects by both greenhouse gas
							and air pollutant emission reduction policies across 17 local
							governments in Korea, including changes in PM2.5 (particulate
							matter less than 2.5 μm) concentration and associated benefits,
							such as reduced premature deaths. The model also provides a range
							of visualization tools for comparative analysis among different
							scenarios, making it a valuable resource for policy planning and
							evaluation, and supporting decision-making processes.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Application of
							the domain adaptation method using a phenological classification
							framework for the land-cover classification of North Korea</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Power sector
							carbon reduction review for South Korea in 2030</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="20" style="display: none;">
				<div class="tit">
					Power sector carbon reduction review for South Korea in 2030
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.33</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_011.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 49px;">This
							study investigates the cost-effectiveness and decarbonization of
							four essential carbon reduction strategies to achieve Korea’s
							recent 2030 NDC (Nationally Determined Contribution) goal in the
							power sector. Examining overseas experiences and identifying
							potentials and challenges in implementing these strategies in
							Korea, this study explores the performance of future Korean power
							systems under fifty-four configurations combining these
							strategies. The evaluation results indicate that: 1) Thirty-one
							of the fifty-four tested configurations can achieve the emission
							target (149.9 MtCO2e) with carbon abatement costs (COA) ranging
							from -$89 to $105/tCO2e. The optimal configuration with the
							lowest COA is a combination of nuclear restoration and renewable
							expansion strategies. 2) Renewable expansion significantly
							reduces the COA and levelized cost of electricity (LCOE). A pure
							renewable expansion strategy with photovoltaics of 68 GW and wind
							turbines of 35 GW attains the emission goal at a COA of
							-$54/tCO2e, in which the generation share of renewables reaches
							42%. 3) A carbon tax of $104/tCO2e achieves the target if
							complemented by nuclear restoration. Otherwise, $120/tCO2e is
							needed. The COA and LCOE are increases by switching from cheap
							coal to expensive natural gas in both cases. 4) Twenty percent
							coal–ammonia co-firing combined with a carbon tax of $32/tCO2e
							and nuclear restoration can achieve the goal with relatively high
							costs compared with the optimal strategies. However, a co-firing
							strategy is limited because the generation shrinks at a minimum
							level when 40% mixing ratios are applied, or when the fuel price
							gap between ammonia and natural gas becomes large.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Development of a
							Greenhouse Gases and Air Pollution Interactions and Synergies
							Model for Korea (GAINS-Korea)</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Decarbonizing
							road transport in Korea: Role of electric vehicle transition
							policies</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="19" style="display: none;">
				<div class="tit">
					Decarbonizing road transport in Korea: Role of electric vehicle
					transition policies
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.34</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_031.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 50px;">This
							study comprehensively analyzed the impact of transportation
							policy tools on the Korean road transport system, economy, and
							environment. To facilitate this analysis, we devised a national
							integrated computable general equilibrium model, encompassing
							vehicle dynamics and choice mechanisms. We assessed six policy
							scenarios, along with three policy mix scenarios. Our findings
							demonstrate the effectiveness of battery electric vehicle (EV)
							transition strategies, such as diesel vehicle phase-outs,
							subsidies, and a sales ban on internal combustion engine vehicles
							(ICEV), in reducing CO2 emissions and enhancing gross domestic
							product. The existing transportation policy mix falls short of
							achieving carbon neutrality in the transportation sector, which
							requires additional measures like EV subsidies,
							vehicle-kilometers-traveled tax, and prohibition on ICEV sales.
							Furthermore, the provision of subsidies for EVs, when paired with
							an economy-wide cap-and-trade policy, holds the potential to
							improve overall economic performance while mitigating the rebound
							effect that is detrimental to the environment.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Power sector
							carbon reduction review for South Korea in 2030</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">A Study on the
							2050 Carbon Neutrality Measures and Costs in the Road
							Transportation Sector in South Korea</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="18" style="display: none;">
				<div class="tit">
					A Study on the 2050 Carbon Neutrality Measures and Costs in the
					Road Transportation Sector in South Korea
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.35</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_029.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 51px;">The
							South Korean government delineated carbon-neutral scenarios for
							the road transport sector in 2021, envisioning a more than 97%
							transition to battery electric vehicles (BEVs) and hydrogen fuel
							cell electric vehicles (FCEVs) by 2050. This study employs the
							Model for Energy Transition and Emission Reduction to examine
							changes in vehicle types, greenhouse gas emissions, and economic
							costs in the road transport sector until 2050. A comparison
							between the carbon-neutral (CN) and business-as-usual (BAU)
							scenarios, maintaining current policy levels, is conducted to
							derive policy implications. The attainment of carbon neutrality
							in the road transport sector hinges significantly on the
							widespread adoption of BEVs and FCEVs, with a crucial policy to
							ban the sales of internal combustion engine vehicle by the 2030s.
							A comparison of the two scenarios highlights the significant
							differences in the choice of BEVs and FCEVs between the
							non-business and business sectors. The direct costs, encompassing
							investment, operating, and fuel costs, are higher in the CN
							scenario than in the BAU scenario. However, when external costs
							related to greenhouse gas emissions and vehicle travel are
							factored in using carbon and vehicle miles traveled taxes, the
							total costs of the CN scenario are lower than those of the BAU
							scenario. Analyzing its economic viability by incorporating
							external costs enhances the policy’s feasibility of achieving
							carbon neutrality.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Decarbonizing
							road transport in Korea: Role of electric vehicle transition
							policies</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">기후변화 이행리스크와
							통화정책 대응: 한국의 사례</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="17" style="display: none;">
				<div class="tit">
					기후변화 이행리스크와 통화정책 대응: 한국의 사례
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.36</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_005.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 52px;">"본
							연구는 한국의 저탄소경제 전환을 위한 탄소세 도입이 거시경제 및 금융 안정성에 미치는 영향에 대해 분석한다.
							Diluiso, Annicchiarico,Kalkuhl and Minx(2021)의 뉴케인지언 DSGE 모형을 기초로
							한국의 2001년∼2020년 자료와 베이지안 방법을 통해 모수를 추정한 후, 탄소세 조기 도입을 통한 점진적 이행과
							지연 도입에 따른 급진적 이행 시나리오를 비교 분석하였다. 나아가 중앙은행의 통화정책 반응함수별로 이행리스크가 어떻게
							나타나는지 비교 분석하고 통화정책 및 건전성 규제에 대한시사점을 도출하였다. 고탄소에너지 의존도가 높은 한국의 경우,
							탄소세가급진적으로 도입되면 점진적 도입에 비해 거시 및 금융변수들의 변동성이현저히 높아지는 것으로 나타났다.
							통화정책이 인플레이션 및 산출 충격에보다 탄력적으로 대응하는 경우, 탄소세 도입의 부정적 파급영향이 일부완화되는
							것으로 분석되었다."</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">A Study on the
							2050 Carbon Neutrality Measures and Costs in the Road
							Transportation Sector in South Korea</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">기축 건물의 온실 가스 감축
							잠재량추경 - 지역난방 공급 노후 아파 트 단지들 중 심으로</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="16" style="display: none;">
				<div class="tit">
					기축 건물의 온실 가스 감축 잠재량추경 - 지역난방 공급 노후 아파 트 단지들 중 심으로
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.37</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_003.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 53px;">Reducing
							greenhouse gas emissions in aging apartment buildings, which
							account for a significant proportion of the building sector, is
							essential for achieving carbon neutrality. However, introducing
							emission reduction measures in buildings poses challenges due to
							difficult retrofitting and high costs, highlighting the need for
							prior evaluation. Therefore, this study assessed the potential
							for emission reduction by implementing energy efficiency
							improvements and heating electrification measures in aging
							apartment complexes. In the Bundang Parktown Apartments, the
							introduction of passive technology is expected to result in a
							maximum greenhouse gas reduction of 22.7%. When transitioning to
							a heat pump for heating, a reduction of 10.8% is anticipated.
							Furthermore, if both technologies are implemented, a reduction of
							26.9% is projected. Due to climate change, greenhouse gas
							emissions are projected to increase by 12% by 2050, resulting in
							a 2% increase in reduction capacity for green remodeling and a 3%
							decrease for heating electrification. Moreover, the effectiveness
							of these measures may vary depending on regional conditions. In
							Daegu"s Seongseo District, in contrast to Bundang, the proportion
							of heating in the energy demand by end-use is lower, and the
							proportion of cooling energy demand is higher. Under these
							conditions, a reduction of up to 23% is expected when
							implementing both passive houses and heat pumps, which is 3.8%
							less than the reduction effect in the same scenario in Bundang.
							Therefore, it is necessary to evaluate the effectiveness of
							greenhouse gas reduction measures considering regional
							environments and climate change patterns.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">기후변화 이행리스크와
							통화정책 대응: 한국의 사례</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Landslide risk
							on photovoltaic power stations under climate change</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="15" style="display: none;">
				<div class="tit">
					Landslide risk on photovoltaic power stations under climate change
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.38</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_006.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 54px;">To
							achieve the net-zero carbon dioxide emission goals, the number of
							solar photovoltaic (PV) power stations (PPSs) installed worldwide
							has increased. An increasing number of PPSs are exposed to
							natural hazards, such as landslides. However, the socioeconomic
							impact of landslide risk on PPSs has rarely been assessed
							nationally. In this study, we assessed the landslide risk for
							PPSs by combining statistical susceptibility and physical-based
							hazard analyses under three representative concentration pathways
							(RCPs). We found that the cumulative landslide-susceptible area
							(LSA) during the current, 2040s, and 2090s periods could vary
							depending on RCP scenarios: 2895 (RCP2.6), 3417 (RCP6.0) and 5492
							km2 (RCP8.5). Especially, under RCP6.0, due to the spatial match
							with the distribution of LSA and the PPSs, the landslide risk on
							PPSs could become about 60 million dollars per year. This loss
							would be 24 million dollars more than the risk of RCP2.6. This
							study provides insights into the economic loss of PPSs from
							landslides in the Republic of Korea and suggests that severe
							climate change would bring a significant increase in this
							economic loss, which may occur in other countries with large
							mountainous areas.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">기축 건물의 온실 가스 감축
							잠재량추경 - 지역난방 공급 노후 아파 트 단지들 중 심으로</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Understanding
							the characteristics of residential electricity consumption in
							Korea: Applyng Machine Learing techniques to household-level
							energy survey data</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="14" style="display: none;">
				<div class="tit">
					Understanding the characteristics of residential electricity
					consumption in Korea: Applyng Machine Learing techniques to
					household-level energy survey data
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.39</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_010.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 55px;">Demand-side
							approaches become an important pillar for energy analysis, and
							their roles for achieving climate targets have been increasingly
							emphasized globally. Particularly, Korea is one of the countries
							experiencing a rapid transition of demographic and household
							structures, and accordingly, the current and future energy demand
							could be significantly affected. As per the importance of the
							understanding the energy demand characteristics, this study
							contributes to understanding the electricity consumption of
							households by analyzing how the various household characteristics
							can be used to understand the household’s electricity consumption
							with household-level survey and machine learning techniques. This
							study utilizes the Household Energy Standing Survey published in
							2022 and selects key household, housing, and appliance ownership
							and usage characteristics from the entire dataset. Afterward, the
							study applies Support Vector Machine, Random Forest, and Decision
							Tree classifiers to classify the household’s monthly electricity
							consumption. The results suggest that the Random Forest
							classifier provides slightly better performances in general
							compared to the other models. Moreover, the feature importance
							suggests that the housing characteristics, such as the size of
							housing, and appliance usage information, and some household
							characteristics, such as the number of household members and
							household income, are relatively important features for
							classification. Although the study finds some evidence of the
							importance of household and behavioral information in
							understanding the household’s electricity consumption, the study
							also identifies the limitation of the survey dataset in
							extracting the behavioral information.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Landslide risk
							on photovoltaic power stations under climate change</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Trade-induced
							land-use transitions and greenhouse gas emissions: The case of
							the EU-Mercosur free-trade agreement</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="13" style="display: none;">
				<div class="tit">
					Trade-induced land-use transitions and greenhouse gas emissions:
					The case of the EU-Mercosur free-trade agreement
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.40</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_025.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 56px;">Currently,
							land use change (LUC) accounts for approximately 18.8% of all
							greenhouse gas (GHG) emissions globally, and up to 66% and 70% in
							Brazil and Paraguay respectively. However, owing to measurement
							difficulties, examining the effects of changing trade patterns is
							often overlooked in studies. This study aims to investigate the
							induced effects of LUC and their consequences concerning GHG
							emissions for the EU-Mercosur free trade agreement. A
							multi-regional computable general equilibrium (CGE) model with an
							explicit land module is used to simulate the effects of the free
							trade agreement. GHG emissions are calculated for LUC, fossil
							energy CO2, and non-CO2 emissions to capture a wide range of
							sources and reveal their relative contributions. The study finds
							that as a more extensive liberalization scheme is implemented,
							the majority of global GHG emissions change are driven by LUC,
							consisting up to 89.9% of the total increase. These findings
							align with previous studies. Nonetheless, we argue that for Latin
							America, where LUC and deforestation are historical problems,
							careful consideration of LUC and agriculture GHG sources is
							necessary to address the potential environmental impacts of trade
							agreements.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Understanding
							the characteristics of residential electricity consumption in
							Korea: Applyng Machine Learing techniques to household-level
							energy survey data</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">운전자 주행패턴 기반 V2G
							확산 가능성 및 전략 연구평균 군집 분석을 이용하여</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="12" style="display: none;">
				<div class="tit">
					운전자 주행패턴 기반 V2G 확산 가능성 및 전략 연구평균 군집 분석을 이용하여
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.41</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_24.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 57px;">재생에너지
							발전 확대는 탄소중립 실현을 촉진하는 핵심 수단이다. 그러나 재생에너지원 비중이 커지면 그 특성으로 인해 전력수급
							불균형이 심화되고 전력망의 안정성을 저해할 수 있으므로, 전력계통의 유연성 자원이 필요하다. V2G(Vehicle
							to Grid)는 재생에너지 수급 최적화를 통해 에너지 사용의 유연성과 안정성을 제고할 수 있다는 점에서 주목받는
							기술이다. V2G가 전력계통 안정성 향상에 기여하기 위해서는, 태양광 에너지 공급이 많은 시간대에 전기자동차 충전을,
							일몰 이후 시간대에는 방전을 유도하는 것이 중요하다. 즉 전기자동차 운전자가 V2G에 참여하려면 자동차 이용에 불편을
							감수하면서 운전 행동을 변화해야 하므로, V2G 확산은 매우 도전적인 과제라고 할 수 있다. 본 연구는 K-평균
							군집화 방법을 이용하여 운전 패턴을 기준으로 한국 운전자들을 군집하고, 국내 시장에서의 V2G 수용 가능성을 분석하는
							것을 목적으로 한다. 군집 결과 6개의 운전자 군집 가운데 총 22%를 차지하는 2개의 그룹이 V2G 참여가 용이한
							것으로 나타났으며, 전체의 43%로 가장 큰 군집인 “규칙적인 출퇴근 운전자”의 경우 현재 운전패턴 상으로는 V2G
							채택이 어려운 것으로 파악되었다. 본 연구의 결과들은 V2G 잠재 시장에 대한 정책적 함의를 제공하여 V2G 확산에
							기여할 수 있다.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Trade-induced
							land-use transitions and greenhouse gas emissions: The case of
							the EU-Mercosur free-trade agreement</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">The economic
							value of new sustainable products: The case of photovoltaic
							thermal (PVT) hybrid solar collectors</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="11" style="display: none;">
				<div class="tit">
					The economic value of new sustainable products: The case of
					photovoltaic thermal (PVT) hybrid solar collectors
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.42</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_023.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 58px;">Among
							green energy technologies, solar power is a promising technology
							in the net-zero era of the power industry. Conventional solar
							modules have decreasing efficiency weaknesses as the temperature
							rises, whereas photovoltaic thermal (PVT) systems do not remove
							heat from the module or lower the temperature. However, the
							profitability of PVT systems has been underestimated. The
							profitability of new convergence products, such as PVT
							technology, entering the market for the first time allows for the
							evaluation of the appropriate starting price and policy
							requirements to support the product’s market entrance. We used
							the contingent valuation method (CVM) to solve this problem. The
							survey derived the respondents’ mean willingness to pay (WTP) and
							the total amount of social benefits. Among these CVM models, the
							one-and-one-half-bound (OOHB) spike model was used to distinguish
							zero WTP. Based on a survey of 300 households, respondents were
							willing to pay an additional yearly average income tax of KRW
							10,608 (USD 7.90), and the total social benefit of PVT technology
							was calculated to be KRW 145 billion (USD 108 million). This
							result shows that individuals evaluate the value of PVT as 3.69%
							of their monthly electricity bill and 2.8% of their monthly gas
							bill. Several additional factors that influence WTP were
							analyzed, indicating a high possibility of PVT adoption by
							individuals who have replaced or are planning to replace
							photovoltaic (PV) modules. This study is significant because it
							examines the economic value of PVT and proposes a focus group for
							the effective market entry of new carbon neutrality products.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">운전자 주행패턴 기반 V2G
							확산 가능성 및 전략 연구평균 군집 분석을 이용하여</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Analysis of
							Electrification and Its Greenhouse Gas Reduction Potential in the
							Industrial Sector of Korea using Mixed Methods</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="10" style="display: none;">
				<div class="tit">
					Analysis of Electrification and Its Greenhouse Gas Reduction
					Potential in the Industrial Sector of Korea using Mixed Methods
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.43</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_027.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 59px;">Carbon
							neutrality has heightened the necessity for deep decarbonization
							in the industrial sector, emphasizing the significance of
							ambitious mitigation measures, including system-level energy and
							material efficiency, carbon capture and utilization,
							electrification, and green hydrogen utilization. Electrification,
							particularly in the hard-to-abate industrial sector, emerges as a
							critical tool assuming the power sector's decarbonization. This
							study aims to evaluate Korea's industrial sector electrification
							potential and its greenhouse gas (GHG) reduction potential by
							2050. To achieve this, we employ a mixed-method approach,
							integrating quantitative methods, such as the Iterative
							Proportional Fitting Procedure (IPFP) for data consistency,
							energy forecast, and elasticity of substitution models, along
							with a qualitative method involving energy experts through the
							Delphi technique. The results indicate an estimated 41%
							electrification potential for Korea's industrial sector by 2050,
							with a potential GHG reduction of approximately 26.3% compared to
							the Business-as-Usual emissions.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">The economic
							value of new sustainable products: The case of photovoltaic
							thermal (PVT) hybrid solar collectors</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Evaluating the
							Economic Impacts of Korea's NDC Implementation via Carbon
							Pricing: A Global Multiregional Computable General Equilibrium
							Analysis</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="9" style="display: none;">
				<div class="tit">
					Evaluating the Economic Impacts of Korea's NDC Implementation via
					Carbon Pricing: A Global Multiregional Computable General
					Equilibrium Analysis
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.44</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_009.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 60px;">In
							April 2023, the Korean government announced its national emission
							pathways to achieve its 2030 NDC target of reducing GHG emissions
							by 40% compared to the 2018-level. The study provides an overview
							of the economic impacts of achieving the NDC target on the Korean
							economy, and particularly, it considers the different
							circumstances of the global mitigation efforts. The study
							collects the countries’ NDC target information, applies a global
							dynamic recursive CGE model with GTAP 11 database, and
							establishes seven scenarios with different global mitigation
							efforts and the recycling of carbon revenues. Three types of
							international cooperation scenarios are Global Cooperation,
							Partial cooperation without Korea, and Unilateral Commitment by
							Korea. The utilization of carbon revenues is another dimension of
							the scenarios. The result indicates that all regions experience
							negative impacts on real GDP under the Global Cooperation
							scenario with lump-sum tax transfer approach. With the labor tax
							recycling, the losses in real GDP decrease, and some regions,
							including Korea, show some positive economic impacts.
							Particularly, Korea experiences substantial benefits from double
							dividend. Moreover, Korea experiences relatively favorable
							impacts of carbon pricing on real GDI. In addition, all scenarios
							indicate some decrease in real exports and imports in all
							regions, and the result suggests that carbon pricing would lead
							to significant negative impacts on production, particularly of
							fossil fuel sectors. We also conduct a sensitivity analysis on
							key parameters, such as the elasticities of substitution between
							energy and genuine input factors, as well as those between
							different sources of energies.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Analysis of
							Electrification and Its Greenhouse Gas Reduction Potential in the
							Industrial Sector of Korea using Mixed Methods</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Technology
							portfolio assessment for near-zero emission iron and steel
							industry in China</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="8" style="display: none;">
				<div class="tit">
					Technology portfolio assessment for near-zero emission iron and
					steel industry in China
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.45</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_001.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 61px;">China
							aims to peak CO2 emissions before 2030 and to achieve carbon
							neutrality before 2060; hence, industrial sectors in China are
							keen to figure out appropriate pathways to support the national
							target of carbon neutrality. The objective of this study is to
							explore near-zero emission pathways for the steel industry of
							China through a detailed technology assessment. The innovative
							technology development has been simulated using the
							AIM-China/steel model, developed by including material-based
							technologies and optimal cost analysis. Six scenarios have been
							given in terms of different levels of production output, emission
							reduction and carbon tax. Near-zero emission and carbon tax
							scenarios have shown that China's steel industry can achieve
							near-zero emission using electric furnaces and hydrogen-based
							direct reduction iron technologies with policy support. Based on
							these technologies, minimised production costs have been
							calculated, revealing that the steel produced by these
							technologies is cost-effective. Moreover, the feedstock cost can
							play a key role in these technology portfolios, especially the
							cost of scrap, iron ore and hydrogen. In addition, the feedstock
							supply can have strong regional effects and can subsequently
							impact the allocation of steelmaking in the future. Therefore,
							China can achieve near-zero emissions in the steel industry, and
							electric furnace and hydrogen-based direct reduction iron
							technologies are crucial to achieving them.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Evaluating the
							Economic Impacts of Korea's NDC Implementation via Carbon
							Pricing: A Global Multiregional Computable General Equilibrium
							Analysis</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">우리나라 주요 수종의
							직경-수고 상대생장 변화 분석</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="7" style="display: none;">
				<div class="tit">
					우리나라 주요 수종의 직경-수고 상대생장 변화 분석
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.46</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_002.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 62px;">산림
							바이오매스는 임목의 크기와 산림의 성숙도, 임지의 생산성(Productivity)을 대표할 수 있는 인자로 활용된다.
							따라서 이를 정량적으로 평가하는 것은 산림경영과 수확뿐만 아니라 이산화탄소(CO2) 흡수를 포함한 생태계 기능과
							서비스의 평가를 위해서도 매우 중요하다. 상대생장식(Allometric equation)은 식물의
							상대생장관계(Relative growth rate)를 통해 각 부분의 값을 추정하는 방법으로, 과거부터 현재까지 폭
							넓게 활용되는 방법론이다. 최근 대기중의 CO2 농도증가와 이에 따른 기후변화로 인해 수목의 상대생장관계가 바뀌고
							있다는 연구결과들이 도출되면서, 기존에 개발된 상대생장식과 계수들에 대한 재검토 필요성이 제기되고 있다. 본
							연구에서는 국가산림자원조사(NFI) 자료를 통해 우리나라 주요 4개 수종[소나무(Pinus densiflora;
							PD), 낙엽송(Larix kaempferi; LK), 굴참나무(Quercus variabilis BL.; QV),
							신갈나무(Quercus mongolica; QM)]의 수고-DBH 상대생장관계를 분석하고, 이를 기존 수확표 정보와
							비교하여 지난 10년간 상대생장의 변화 유무 및 정도를 파악하고자 하였다. 분석결과 모든 수종에서 NFI 차수가
							증가할수록, 동일 DBH에 대한 기대 수고값이 증가한 것으로 확인되었다. 예를 들면, 모형 분석결과 PD, LK,
							QV, QM의 DBH 25 cm에 대한 수고의 기댓값은 5차 NFI 자료에서는 12.48, 19.17, 14.47,
							13.19 m로, 7차 NFI 자료에서는 13.61(+9.1%), 21.58(+12.7%), 15.76(+8.9%),
							13.93 m (+5.6%) 로 추정되어 수종별로 5~13%정도 증가한 것으로 나타났다. 이러한 결과는 현재 우리나라
							산림의 주요 수종들의 임목 생장은, 과거 조사자료를 통해 파악된 수종별 수고-DBH 발달경향과 비교 했을 때,
							직경생장보다 수고생장을 더 활발하게 하고 있다는 것을 의미한다.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Technology
							portfolio assessment for near-zero emission iron and steel
							industry in China</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Value of
							different electric vehicle charging facility types under
							different availability situations: A South Korean case study of
							electric vehicle and internal combustion engine vehicle owners</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="6" style="display: none;">
				<div class="tit">
					Value of different electric vehicle charging facility types under
					different availability situations: A South Korean case study of
					electric vehicle and internal combustion engine vehicle owners
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.47</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_022.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 63px;">The
							availability of charging facilities plays a critical role in
							electric vehicle (EV) adoption; however, as EVs continue to
							diffuse and the initial lack of charging availability is
							improving in some countries, governments must consider additional
							charging facility rollout policies as EVs can be charged through
							various types of facilities, including those at households,
							workplaces, and public areas. Previous studies mainly utilized
							real-world charging data or surveys conducted solely on EV owners
							for investigating these aspects. However, the opinion of
							conventional internal combustion engine vehicle (ICEV) owners is
							also important when making policy decisions for EV charging
							facilities. As EVs are expected to positively impact the
							environment, ICEV owners may also value the rollout of EV
							charging facilities. Moreover, some ICEV owners are potential
							future EV owners. Therefore, along with surveying EV owners, this
							study utilized the contingent valuation method for ICEV owners to
							estimate how their willingness to pay (valuation) changes under
							different facility rollout stages (initial and additional) and
							different types of charging facilities (public and workplace).
							The results showed that ICEV owners also imposed significant
							value for EV charging facilities. However, they imposed higher
							values than EV owners on public chargers during the initial
							diffusion stage.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">우리나라 주요 수종의
							직경-수고 상대생장 변화 분석</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Effects of
							policy instruments on electric scooter adoption in Jakarta, In
							donesia: A discrete choice experiment approach</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="5" style="display: none;">
				<div class="tit">
					Effects of policy instruments on electric scooter adoption in
					Jakarta, In donesia: A discrete choice experiment approach
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.48</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_020.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 64px;">Electrification
							of the transport sector is expanding in both developing and
							developed countries in response to air pollution and climate
							change. Indonesia, the world’s 10th biggest CO2 emitter having
							the world’s third largest two-wheeler market, aims to deploy 2.1
							million electric two-wheelers by 2025 and is developing electric
							vehicle policies. This study designs a consumers’ choice model
							for buying a scooter in Jakarta, Indonesia, and simulates the
							effects of two supportive policies to expand electric
							two-wheelers (providing subsidies and building charging
							infrastructure) using a discrete choice experiment. We calculate
							the budget required for these subsidies. The results show that
							people in Jakarta highly prefer electric scooters and consider
							their environmental impacts. A 20% subsidy increases the
							estimated annual market share of new electric scooter sales to
							10%. In addition to a 20% subsidy, building charging
							infrastructure for electric scooters to the same level as
							conventional gas stations leads to estimated new sales of
							electric scooters reaching 21%. This study suggests the need to
							develop comprehensive policy packages to successfully deploy
							electric two-wheelers in Jakarta and provides reference data to
							improve the efficiency and effectiveness of related policies.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Value of
							different electric vehicle charging facility types under
							different availability situations: A South Korean case study of
							electric vehicle and internal combustion engine vehicle owners</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">2050 탄소중립 시나리오에
							따른 전환부문의 온실가스 배출량 및 배출원단위 경로연구</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="4" style="display: none;">
				<div class="tit">
					2050 탄소중립 시나리오에 따른 전환부문의 온실가스 배출량 및 배출원단위 경로연구
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.49</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_026.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 65px;">In
							this study, we define three 2050 carbon-neutral scenarios and
							analyze their generation mixes, greenhouse gas emissions, and
							emission intensity pathways. Scenarios A and B represent the 2050
							carbon-neutral scenarios and the updated 2030 NDC announced in
							2021. Scenario C reflects the current nuclear power plant
							expansion policy. Scenarios announced by the government only
							contain snapshots of 2050 and 2030; in this study, we derive
							yearly pathways. As a result, the proportions of nuclear power
							and renewable energy in 2050 in scenario C, to which the
							expansion of nuclear power is applied, are expected to be 12.7%
							and 55.8%, respectively. In addition, in terms of cumulative
							emissions, scenario A, which excludes CCS, had the highest
							emissions. If the storage space and economic feasibility of CCS
							can be secured, CCS could play a role in carbon neutrality.
							Greenhouse gas emission intensities decrease almost linearly
							until they near zero by 2050, although there are slight
							differences among scenarios. Safe electrification of the final
							energy demand sector could be achieved in 2032, when the emission
							intensity per electricity consumption is predicted to be 0.2
							tCO₂eq./MWh.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Effects of
							policy instruments on electric scooter adoption in Jakarta, In
							donesia: A discrete choice experiment approach</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Estimating the
							C2C market equilibrium: The case of the carpool market in South
							Korea</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="3" style="display: none;">
				<div class="tit">
					Estimating the C2C market equilibrium: The case of the carpool
					market in South Korea
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.50</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_019.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 66px;">Carpooling
							service is a win-win mutual matching activity for both drivers
							and riders. In South Korea, which experiences high vehicle
							density on the road and traffic congestion, these services have
							become part of many urban transport solutions. This study reviews
							the peculiarities of the consumer-to-consumer (C2C) market by
							examining the carpool services in South Korea, analyzes the
							preference for carpool services for both potential drivers and
							riders, and examines the equilibrium point (demand and supply
							price of carpool) at which mutual matching occurs for the given
							attributes of carpool services. A choice experiment was conducted
							to analyze the preference for carpool services. The study also
							examines how the equilibrium point changes for the drivers and
							passengers based on different attribute levels of carpooling. The
							equilibrium price and utilization ratio are found to be KRW 6,100
							(≒USD 6) per 30minutes of carpool drive/ ride and 20.3%,
							respectively. This study contributes to the literature by
							providing profound understandings of the C2C market and examining
							the equilibrium point after considering the traveling behavior
							decision-making process of both potential drivers and riders.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">2050 탄소중립 시나리오에
							따른 전환부문의 온실가스 배출량 및 배출원단위 경로연구</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Efficient
							subsidy distribution for hydrogen fuel cell vehicles based on
							demand segmentation</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="2" style="display: none;">
				<div class="tit">
					Efficient subsidy distribution for hydrogen fuel cell vehicles
					based on demand segmentation
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.51</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_021.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 67px;">The
							transportation sector paradigm is being changed to achieve carbon
							neutrality by 2050. Governments have been actively providing
							subsidies as part of the effort to replace existing internal
							combustion engine vehicles with alternative fuel vehicles (AFVs).
							However, subsidization is not a sustainable approach. Some
							countries, including the United States, the United Kingdom, and
							China, are reducing AFV subsidies. Meanwhile, Korea, which ranks
							first in the global market share for hydrogen fuel cell vehicles
							(HFCVs), provides insufficient HFCV subsidies. Therefore, this
							study redefines demand to better distribute these limited
							subsidies. Demand is segmented into “new demand” and “transferred
							demand” according to the pattern of demand transfer; the
							effective subsidy level for each demand segment is discussed. We
							find that to maximize reductions in CO2, the most effective
							purchase subsidy is 70 % for transferred demand and 90 % for new
							demand. In addition, the most cost-effective purchase subsidy
							combination is 10 % for transferred demand and 60 % for new
							demand.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Estimating the
							C2C market equilibrium: The case of the carpool market in South
							Korea</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="/kr/publication/publication_view?no=${next}">Estimating
							consumers' willingness to pay for reusable food containers when
							ordering delivery food: A contingent valuation approach</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>
			<div class="board_view" id="1" style="display: none;">
				<div class="tit">
					Estimating consumers' willingness to pay for reusable food
					containers when ordering delivery food: A contingent valuation
					approach
					<div class="date">
						<dl>
							<dt>등록일</dt>
							<dd>2024.10.52</dd>
						</dl>
					</div>
				</div>
				<div class="con">
					<center>
						<img src="/images/unicon/uploaded/05_018.png" alt="image"
							style="text-align: center;">
					</center>
					<br>
					<div style="margin-left: 90px; line-height: 220%;">
						<p style="text-align: justify; width: 90%; padding-bottom: 68px;">The
							environmental impacts of delivery food packaging waste pose an
							increasing threat as the delivery industry is growing rapidly
							worldwide. Possible effects include soil, water and air
							pollution, increased CO2-emissions and death of aquatic
							organisms. Previous research has demonstrated the environmental
							advantages of distributing reusable food containers, rather than
							single-use or bio-degradable. Therefore, this research examines
							the possibility of introducing a city-scale reusable food
							container system for delivery platforms in Seoul, South Korea,
							based on a contingent valuation survey that examined the
							consumers’ willingness to pay (WTP) additionally in order to get
							a reusable container when ordering delivery food. If the
							container has to be returned to a facility within 500m, the WTP
							was found to be USD 1.92; if the container will be picked up at
							the point of delivery, the WTP is USD 2.18. The cost analysis
							suggests that it is feasible to offer reusable food container
							option for companies that have at least 25% market share in South
							Korea, with which a 114% return of investment can be achieved
							after one year. Based on the results, policy recommendations are
							made to support the introduction of reusable food containers for
							delivery platforms and a pilot project in areas with high
							population density is suggested.</p>
					</div>
				</div>
				<div class="prev_next">
					<div class="prev">
						<span>이전글</span><a href="/kr/publication/publication_view?no=${prev}">Efficient
							subsidy distribution for hydrogen fuel cell vehicles based on
							demand segmentation</a>
					</div>
					<div class="next">
						<span>다음글</span><a href="javascript:void(0);">다음글이 없습니다.</a>
					</div>
				</div>
				<a href="/kr/publication/publication" class="btn_list">목록</a>
			</div>

		</div>
</div>
<script type="text/javascript">
	$("#" + ${no}).css("display", "block");
</script>
<jsp:include page="../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

