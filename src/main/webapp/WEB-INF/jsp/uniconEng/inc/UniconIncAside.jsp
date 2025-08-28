<%--
  Class Name : EgovIncHeader.jsp
  Description : 화면상단 Header(include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="svisual g${gNum}">
	<div class="tit">${gName}</div>
	<div class="location"><i></i><em></em><span>${gName}</span><em></em><strong>${sName}</strong>
	</div>
	<div class="aside">
		<dl class="g">
			<dt>${gName}</dt>
			<dd>
				<a href="/eng/about/assignment" class="<c:if test="${gNum == '01'}"> on </c:if>">About GIAM</a>
				<a href="/eng/research/steel" class="<c:if test="${gNum == '02'}"> on </c:if>">Research</a>
				<a href="/eng/database/steel" class="<c:if test="${gNum == '03'}"> on </c:if>">Database</a>
				<a href="/eng/partnership/partnership" class="<c:if test="${gNum == '04'}"> on </c:if>">Achievements</a>
				<a href="/eng/publication/publication" class="<c:if test="${gNum == '05'}"> on </c:if>">Publication</a>
				<a href="/eng/news/news" class="<c:if test="${gNum == '06'}"> on </c:if>">News</a>
			</dd>
		</dl>
		<dl class="s">
			<dt>${sName}</dt>
			<dd>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<dd>
			    <c:choose>
			        <c:when test="${gNum == '01'}">
			            <a href="/eng/about/assignment" class="${sNum == '01' ? 'on' : ''}">About Project</a>
			            <a href="/eng/about/greetings" class="${sNum == '02' ? 'on' : ''}">Greetings</a>
			            <a href="/eng/about/researcher" class="${sNum == '03' ? 'on' : ''}">Researcher</a>
			            <a href="/eng/about/location" class="${sNum == '04' ? 'on' : ''}">Contact</a>
			        </c:when>

			        <c:when test="${gNum == '02'}">
			            <a href="/eng/research/steel" class="${sNum == '01' ? 'on' : ''}">Steel</a>
			            <a href="/eng/research/transport" class="${sNum == '02' ? 'on' : ''}">Transport</a>
			            <a href="/eng/research/electricity" class="${sNum == '03' ? 'on' : ''}">Electricity</a>
			            <a href="/eng/research/building" class="${sNum == '04' ? 'on' : ''}">Building</a>
			            <a href="/eng/research/forest" class="${sNum == '05' ? 'on' : ''}">Forest</a>
			        </c:when>

					<c:when test="${gNum == '03'}">
						<!-- io 모델값이 있으면 우선 사용, 없으면 param.io 사용 -->
						<c:set var="currentIo" value="${empty io ? (empty param.io ? 'input' : param.io) : io}" />

						<div class="db-two-select">
							<!-- Left: IO -->
							<div class="select-group">
								<label for="ioSelect">Input / Output</label>
								<select id="ioSelect">
									<option value="input"  ${currentIo=='input'  ? 'selected' : ''}>Input</option>
									<option value="output" ${currentIo=='output' ? 'selected' : ''}>Output</option>
								</select>
							</div>

							<div class="select-group">
								<label for="sectorSelect">Sector</label>
								<select id="sectorSelect">
									<option data-path="<c:url value='/eng/database/steel'/>"       ${sNum=='01' ? 'selected' : ''}>Industry</option>
									<option data-path="<c:url value='/eng/database/transport'/>"   ${sNum=='02' ? 'selected' : ''}>Transport</option>
									<option data-path="<c:url value='/eng/database/electricity'/>" ${sNum=='03' ? 'selected' : ''}>Electricity</option>
									<option data-path="<c:url value='/eng/database/building'/>"    ${sNum=='04' ? 'selected' : ''}>Building</option>
									<option data-path="<c:url value='/eng/database/forest'/>"      ${sNum=='05' ? 'selected' : ''}>Forest</option>
								</select>
							</div>
						</div>

						<script>
							(function(){
								const ioSel = document.getElementById('ioSelect');
								const sectorSel = document.getElementById('sectorSelect');

								function setUrls() {
									const io = ioSel.value || 'input';
									[...sectorSel.options].forEach(opt => {
										const base = opt.getAttribute('data-path');
										if (base) opt.value = base + '?io=' + io;
									});
								}
								ioSel.value = '${currentIo}';
								setUrls();

								// Change IO -> reset to first sector (Steel) and go
								ioSel.onchange = () => {
									setUrls();
									sectorSel.selectedIndex = 0;
									location.href = sectorSel.options[0].value;
								};

								// Change Sector -> go
								sectorSel.onchange = () => location.href = sectorSel.value;
							})();
						</script>
					</c:when>

			        <c:when test="${gNum == '04'}">
						<a href="/eng/partnership/partnership?year=2025" class="${sNum == '2025' ? 'on' : ''}">2025</a>
			            <a href="/eng/partnership/partnership?year=2024" class="${sNum == '2024' ? 'on' : ''}">2024</a>
			            <a href="/eng/partnership/partnership?year=2023" class="${sNum == '2023' ? 'on' : ''}">2023</a>
			            <a href="/eng/partnership/partnership?year=2022" class="${sNum == '2022' ? 'on' : ''}">2022</a>
			        </c:when>
			    </c:choose>
			</dd>
		</dl>
	</div>
</div>