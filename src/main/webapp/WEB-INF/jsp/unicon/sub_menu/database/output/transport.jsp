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
            max-width: 90%;
            margin: 20px auto;
            overflow-x: auto; /* 가로 스크롤 가능하도록 설정 */
        }
        
        .dataTables_wrapper .dataTables_length select {
            padding: 0.5em;
            border-radius: 4px;
            border: 1px solid #ddd;
            width: 70px; /* Set the desired width */
            height:44px !important;
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
			<div class="select_box">
				<dl class="select1">
					<dt>AUS</dt>
					<dd style="position: static;">
						<a href="javascript:void(0);" class="a on">AUS</a> <a
							href="javascript:void(0);" class="b">NZL</a> <a
							href="javascript:void(0);" class="c">CAN</a> <a
							href="javascript:void(0);" class="d">MEX</a> <a
							href="javascript:void(0);" class="e">EU</a> <a
							href="javascript:void(0);" class="f">USA</a>
					</dd>
				</dl>
				<dl class="select2" style="width: 320px !important;">
					<dt>기술별 연도별 차량 등록대수</dt>
					<dd style="position: static;">
						<div class="box a on">
							<a href="javascript:void(0);" class="t1 on">기술별 연도별 차량 등록대수</a> <a
								href="javascript:void(0);" class="t2">기술별 연도별 총 주행거리</a>
						</div>
						<div class="box b">
							<a href="javascript:void(0);" class="t1">기술별 연도별 차량 등록대수</a> <a
								href="javascript:void(0);" class="t2">기술별 연도별 총 주행거리</a>
						</div>
						<div class="box c">
							<a href="javascript:void(0);" class="t1">기술별 연도별 차량 등록대수</a> <a
								href="javascript:void(0);" class="t2">기술별 연도별 총 주행거리</a>
						</div>
						<div class="box d">
							<a href="javascript:void(0);" class="t1">기술별 연도별 차량 등록대수</a> <a
								href="javascript:void(0);" class="t2">기술별 연도별 총 주행거리</a>
						</div>
						<div class="box e">
							<a href="javascript:void(0);" class="t1">기술별 연도별 차량 등록대수</a> <a
								href="javascript:void(0);" class="t2">기술별 연도별 총 주행거리</a>
						</div>
						<div class="box f">
							<a href="javascript:void(0);" class="t1">기술별 연도별 차량 등록대수</a> <a
								href="javascript:void(0);" class="t2">기술별 연도별 총 주행거리</a>
						</div>
					</dd>
				</dl>
			</div>

			<div class="chart_wrap">
				<div class="hand">
					<div class="bar_box"></div>
				</div>
				<div class="scrollbox">
					<div class="chart_box chart_a1 on">
						<canvas class="chart" id="chart_a1"></canvas>
					</div>
					<div class="chart_box chart_a2">
						<table id="dataTable1" class="display">
							<thead>
								<tr>
									<th>연도</th>
									<th>Passenger cars</th>
									<th>Motor cycles</th>
									<th>Buses</th>
									<th>Light commercial vehicles</th>
									<th>Rigid and other trucks</th>
									<th>Articulated trucks</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1983</td>
									<td>99.13</td>
									<td>2.25</td>
									<td>1.05</td>
									<td>19.32</td>
									<td>6.17</td>
									<td>3.41</td>
								</tr>
								<tr>
									<td>1984</td>
									<td>103.07</td>
									<td>2.28</td>
									<td>1.14</td>
									<td>20.52</td>
									<td>6.34</td>
									<td>3.59</td>
								</tr>
								<tr>
									<td>1985</td>
									<td>106.47</td>
									<td>2.1</td>
									<td>1.22</td>
									<td>21.23</td>
									<td>6.22</td>
									<td>3.67</td>
								</tr>
								<tr>
									<td>1986</td>
									<td>109</td>
									<td>2</td>
									<td>1.3</td>
									<td>21.72</td>
									<td>6.28</td>
									<td>3.69</td>
								</tr>
								<tr>
									<td>1987</td>
									<td>114.57</td>
									<td>1.92</td>
									<td>1.39</td>
									<td>22.77</td>
									<td>6.69</td>
									<td>3.95</td>
								</tr>
								<tr>
									<td>1988</td>
									<td>120.3</td>
									<td>2</td>
									<td>1.47</td>
									<td>23.73</td>
									<td>6.73</td>
									<td>4.05</td>
								</tr>
								<tr>
									<td>1989</td>
									<td>124</td>
									<td>1.8</td>
									<td>1.56</td>
									<td>23.9</td>
									<td>6.84</td>
									<td>4.13</td>
								</tr>
								<tr>
									<td>1990</td>
									<td>124.47</td>
									<td>1.62</td>
									<td>1.52</td>
									<td>23.3</td>
									<td>6.12</td>
									<td>4.07</td>
								</tr>
								<tr>
									<td>1991</td>
									<td>127.18</td>
									<td>1.61</td>
									<td>1.48</td>
									<td>24.17</td>
									<td>5.91</td>
									<td>4.1</td>
								</tr>
								<tr>
									<td>1992</td>
									<td>131.33</td>
									<td>1.62</td>
									<td>1.49</td>
									<td>24.95</td>
									<td>5.82</td>
									<td>4.39</td>
								</tr>
								<tr>
									<td>1993</td>
									<td>134.91</td>
									<td>1.59</td>
									<td>1.55</td>
									<td>25.76</td>
									<td>6.02</td>
									<td>4.53</td>
								</tr>
								<tr>
									<td>1994</td>
									<td>139.38</td>
									<td>1.57</td>
									<td>1.59</td>
									<td>27.27</td>
									<td>6.32</td>
									<td>4.82</td>
								</tr>
								<tr>
									<td>1995</td>
									<td>141.59</td>
									<td>1.52</td>
									<td>1.64</td>
									<td>28.28</td>
									<td>6.65</td>
									<td>5.02</td>
								</tr>
								<tr>
									<td>1996</td>
									<td>142.87</td>
									<td>1.52</td>
									<td>1.65</td>
									<td>28.65</td>
									<td>7.15</td>
									<td>5.21</td>
								</tr>
								<tr>
									<td>1997</td>
									<td>144.51</td>
									<td>1.46</td>
									<td>1.69</td>
									<td>29.94</td>
									<td>7.24</td>
									<td>5.4</td>
								</tr>
								<tr>
									<td>1998</td>
									<td>148.08</td>
									<td>1.4</td>
									<td>1.71</td>
									<td>30.69</td>
									<td>7.17</td>
									<td>5.55</td>
								</tr>
								<tr>
									<td>1999</td>
									<td>151.17</td>
									<td>1.42</td>
									<td>1.76</td>
									<td>31.33</td>
									<td>7.29</td>
									<td>5.7</td>
								</tr>
								<tr>
									<td>2000</td>
									<td>149.75</td>
									<td>1.46</td>
									<td>1.8</td>
									<td>31.7</td>
									<td>7.17</td>
									<td>5.62</td>
								</tr>
								<tr>
									<td>2001</td>
									<td>153.63</td>
									<td>1.55</td>
									<td>1.82</td>
									<td>32.94</td>
									<td>7.44</td>
									<td>5.81</td>
								</tr>
								<tr>
									<td>2002</td>
									<td>157.71</td>
									<td>1.52</td>
									<td>1.86</td>
									<td>34.02</td>
									<td>7.7</td>
									<td>5.97</td>
								</tr>
								<tr>
									<td>2003</td>
									<td>165.35</td>
									<td>1.6</td>
									<td>1.89</td>
									<td>35.15</td>
									<td>7.85</td>
									<td>6.16</td>
								</tr>
								<tr>
									<td>2004</td>
									<td>166.02</td>
									<td>1.72</td>
									<td>1.91</td>
									<td>35.38</td>
									<td>8.1</td>
									<td>6.32</td>
								</tr>
								<tr>
									<td>2005</td>
									<td>162.91</td>
									<td>1.88</td>
									<td>1.96</td>
									<td>36.28</td>
									<td>8.39</td>
									<td>6.46</td>
								</tr>
								<tr>
									<td>2006</td>
									<td>164.94</td>
									<td>2.04</td>
									<td>2</td>
									<td>37.64</td>
									<td>8.62</td>
									<td>6.72</td>
								</tr>
								<tr>
									<td>2007</td>
									<td>165.73</td>
									<td>2.2</td>
									<td>2.06</td>
									<td>39.26</td>
									<td>8.86</td>
									<td>6.91</td>
								</tr>
								<tr>
									<td>2008</td>
									<td>165.08</td>
									<td>2.32</td>
									<td>2.13</td>
									<td>40.19</td>
									<td>8.75</td>
									<td>6.83</td>
								</tr>
								<tr>
									<td>2009</td>
									<td>166.15</td>
									<td>2.39</td>
									<td>2.2</td>
									<td>41.85</td>
									<td>8.99</td>
									<td>6.95</td>
								</tr>
								<tr>
									<td>2010</td>
									<td>168.03</td>
									<td>2.34</td>
									<td>2.27</td>
									<td>43.12</td>
									<td>9.21</td>
									<td>7.2</td>
								</tr>
								<tr>
									<td>2011</td>
									<td>169.58</td>
									<td>2.28</td>
									<td>2.36</td>
									<td>44.48</td>
									<td>9.45</td>
									<td>7.45</td>
								</tr>
								<tr>
									<td>2012</td>
									<td>171.2</td>
									<td>2.33</td>
									<td>2.4</td>
									<td>45.83</td>
									<td>9.65</td>
									<td>7.65</td>
								</tr>
								<tr>
									<td>2013</td>
									<td>173.71</td>
									<td>2.38</td>
									<td>2.44</td>
									<td>47.09</td>
									<td>9.84</td>
									<td>7.84</td>
								</tr>
								<tr>
									<td>2014</td>
									<td>177.09</td>
									<td>2.41</td>
									<td>2.46</td>
									<td>48.48</td>
									<td>10.03</td>
									<td>7.95</td>
								</tr>
								<tr>
									<td>2015</td>
									<td>181.47</td>
									<td>2.45</td>
									<td>2.48</td>
									<td>50.11</td>
									<td>10.3</td>
									<td>8.03</td>
								</tr>
								<tr>
									<td>2016</td>
									<td>184.62</td>
									<td>2.47</td>
									<td>2.49</td>
									<td>51.95</td>
									<td>10.54</td>
									<td>8.12</td>
								</tr>
								<tr>
									<td>2017</td>
									<td>185.41</td>
									<td>2.46</td>
									<td>2.52</td>
									<td>54</td>
									<td>10.81</td>
									<td>8.22</td>
								</tr>
								<tr>
									<td>2018</td>
									<td>185.45</td>
									<td>2.44</td>
									<td>2.54</td>
									<td>54.39</td>
									<td>10.91</td>
									<td>8.27</td>
								</tr>
								<tr>
									<td>2019</td>
									<td>170.63</td>
									<td>2.37</td>
									<td>2.38</td>
									<td>52.5</td>
									<td>10.81</td>
									<td>8.31</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="chart_box chart_b1">
						<canvas class="chart" id="chart_b1"></canvas>
					</div>
					<div class="chart_box chart_b2" style="max-width: 3000px;">
						<table id="dataTable2" class="display">
							<thead>
								<tr>
									<th>연도</th>
									<th>Light passenger <br> petrol travel
									</th>
									<th>Light passenger <br> diesel travel
									</th>
									<th>Light commercial <br> petrol travel
									</th>
									<th>Light commercial <br> diesel travel
									</th>
									<th>Light pure electric <br> travel
									</th>
									<th>Truck petrol <br> travel
									</th>
									<th>Truck diesel <br> travel
									</th>
									<th>Bus petrol <br> travel
									</th>
									<th>Bus diesel <br> travel
									</th>
									<th>Electric bus <br> travel
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2001</td>
									<td>26292.050128</td>
									<td>2488.6937957</td>
									<td>2324.7424293</td>
									<td>2851.2710945</td>
									<td>0.5127683519</td>
									<td>31.819386903</td>
									<td>2153.5739407</td>
									<td>2.8552664107</td>
									<td>135.34650047</td>
									<td>1.3199850122</td>
								</tr>
								<tr>
									<td>2002</td>
									<td>27156.256878</td>
									<td>2616.9253457</td>
									<td>2252.7994197</td>
									<td>3020.8178335</td>
									<td>0.4593797361</td>
									<td>30.305586493</td>
									<td>2248.0188318</td>
									<td>2.5746603592</td>
									<td>145.02482068</td>
									<td>1.2900767085</td>
								</tr>
								<tr>
									<td>2003</td>
									<td>27868.843827</td>
									<td>2852.9270534</td>
									<td>2172.9284552</td>
									<td>3216.4619659</td>
									<td>0.4338031153</td>
									<td>28.286294893</td>
									<td>2331.0946072</td>
									<td>2.1652484947</td>
									<td>155.35471432</td>
									<td>1.391478583</td>
								</tr>
								<tr>
									<td>2004</td>
									<td>28433.333247</td>
									<td>3080.1846029</td>
									<td>2087.1612451</td>
									<td>3467.4635287</td>
									<td>0.3965011248</td>
									<td>26.292569906</td>
									<td>2482.9770896</td>
									<td>2.3591952189</td>
									<td>172.86998976</td>
									<td>1.3443359646</td>
								</tr>
								<tr>
									<td>2005</td>
									<td>28520.406108</td>
									<td>3172.9600629</td>
									<td>1989.4371236</td>
									<td>3667.4491062</td>
									<td>0.4077045773</td>
									<td>23.30232918</td>
									<td>2555.3432677</td>
									<td>2.3642043106</td>
									<td>186.17683332</td>
									<td>1.3024656962</td>
								</tr>
								<tr>
									<td>2006</td>
									<td>28325.319218</td>
									<td>3173.8345917</td>
									<td>1888.3891735</td>
									<td>3861.955042</td>
									<td>0.4242285215</td>
									<td>20.26224092</td>
									<td>2591.8966249</td>
									<td>2.3308001711</td>
									<td>194.18815545</td>
									<td>1.259616598</td>
								</tr>
								<tr>
									<td>2007</td>
									<td>28666.746536</td>
									<td>3190.1294277</td>
									<td>1819.5972035</td>
									<td>4107.7766251</td>
									<td>0.3641509548</td>
									<td>19.163937433</td>
									<td>2664.0810491</td>
									<td>2.077535301</td>
									<td>202.22471</td>
									<td>1.1458780809</td>
								</tr>
								<tr>
									<td>2008</td>
									<td>28073.239237</td>
									<td>3087.7610996</td>
									<td>1735.5987478</td>
									<td>4281.2620574</td>
									<td>0.3123549017</td>
									<td>17.438488208</td>
									<td>2656.2062032</td>
									<td>1.9604877677</td>
									<td>208.63779018</td>
									<td>1.1093976842</td>
								</tr>
								<tr>
									<td>2009</td>
									<td>28178.226305</td>
									<td>3073.2763953</td>
									<td>1681.8341162</td>
									<td>4329.7371336</td>
									<td>0.3062914329</td>
									<td>15.486781572</td>
									<td>2518.0744117</td>
									<td>1.8043329837</td>
									<td>214.90993752</td>
									<td>1.4637332858</td>
								</tr>
								<tr>
									<td>2010</td>
									<td>28133.21351</td>
									<td>3054.0103546</td>
									<td>1630.5165818</td>
									<td>4418.0737499</td>
									<td>0.2995979445</td>
									<td>14.688226138</td>
									<td>2517.6110921</td>
									<td>1.6593622732</td>
									<td>222.34588015</td>
									<td>1.8362960922</td>
								</tr>
								<tr>
									<td>2011</td>
									<td>27710.660417</td>
									<td>2998.3243585</td>
									<td>1565.1854426</td>
									<td>4508.5046028</td>
									<td>0.3671704633</td>
									<td>13.266596577</td>
									<td>2525.1686867</td>
									<td>1.1153161108</td>
									<td>219.91699387</td>
									<td>1.7615920938</td>
								</tr>
								<tr>
									<td>2012</td>
									<td>27636.463042</td>
									<td>3044.2979377</td>
									<td>1530.836742</td>
									<td>4648.2310253</td>
									<td>0.617011476</td>
									<td>11.521301672</td>
									<td>2514.6699943</td>
									<td>1.0476923199</td>
									<td>226.30502791</td>
									<td>1.4695084406</td>
								</tr>
								<tr>
									<td>2013</td>
									<td>27811.502825</td>
									<td>3156.7592857</td>
									<td>1517.1463701</td>
									<td>4922.9920577</td>
									<td>0.7266319687</td>
									<td>10.498930616</td>
									<td>2570.9011245</td>
									<td>0.9607157983</td>
									<td>233.30063997</td>
									<td>1.4321289268</td>
								</tr>
								<tr>
									<td>2014</td>
									<td>28266.921786</td>
									<td>3258.4253785</td>
									<td>1511.8867372</td>
									<td>5289.5051375</td>
									<td>1.28496512</td>
									<td>9.7533838868</td>
									<td>2662.9176516</td>
									<td>0.8912420486</td>
									<td>242.9179427</td>
									<td>1.5044261002</td>
								</tr>
								<tr>
									<td>2015</td>
									<td>29177.26033</td>
									<td>3355.7164088</td>
									<td>1514.5650109</td>
									<td>5721.5354735</td>
									<td>3.2170183518</td>
									<td>8.9737757365</td>
									<td>2719.296498</td>
									<td>0.8828613401</td>
									<td>250.20926607</td>
									<td>1.5000209374</td>
								</tr>
								<tr>
									<td>2016</td>
									<td>30357.978133</td>
									<td>3499.1807654</td>
									<td>1537.4121916</td>
									<td>6265.8701535</td>
									<td>9.20700753</td>
									<td>8.9925083092</td>
									<td>2792.8386534</td>
									<td>0.7461423286</td>
									<td>262.57608986</td>
									<td>1.4776866133</td>
								</tr>
								<tr>
									<td>2017</td>
									<td>31043.126642</td>
									<td>3617.5264547</td>
									<td>1544.4536147</td>
									<td>6844.262261</td>
									<td>30.743940543</td>
									<td>8.7869149995</td>
									<td>2929.6176843</td>
									<td>0.6867416246</td>
									<td>280.82776633</td>
									<td>1.4856080778</td>
								</tr>
								<tr>
									<td>2018</td>
									<td>31416.886856</td>
									<td>3704.9423932</td>
									<td>1514.5591704</td>
									<td>7438.6223828</td>
									<td>77.28117601</td>
									<td>8.3351006931</td>
									<td>3017.5021207</td>
									<td>0.7017154547</td>
									<td>298.12326615</td>
									<td>1.5687188843</td>
								</tr>
								<tr>
									<td>2019</td>
									<td>30689.139009</td>
									<td>3660.8257057</td>
									<td>1441.23196</td>
									<td>7812.4784413</td>
									<td>133.20969659</td>
									<td>7.7641273131</td>
									<td>3033.1116004</td>
									<td>0.6996516697</td>
									<td>306.47563921</td>
									<td>2.0879255752</td>
								</tr>
								<tr>
									<td>2020</td>
									<td>29100.649796</td>
									<td>3533.5601979</td>
									<td>1337.2030918</td>
									<td>7964.1009288</td>
									<td>177.67929019</td>
									<td>7.4009465487</td>
									<td>2997.2306547</td>
									<td>0.5493458382</td>
									<td>260.51096993</td>
									<td>2.4645236991</td>
								</tr>
								<tr>
									<td>2021</td>
									<td>29181.846589</td>
									<td>3552.4191648</td>
									<td>1293.3217119</td>
									<td>8354.2091354</td>
									<td>252.38891351</td>
									<td>7.2877107738</td>
									<td>3139.6083323</td>
									<td>0.527692347</td>
									<td>249.13463588</td>
									<td>4.3684015822</td>
								</tr>
								<tr>
									<td>2022</td>
									<td>29172.082889</td>
									<td>3513.7879696</td>
									<td>1275.5444176</td>
									<td>8824.3729016</td>
									<td>481.64281678</td>
									<td>6.9281779311</td>
									<td>3208.1157714</td>
									<td>0.5494219033</td>
									<td>251.67278148</td>
									<td>9.4057701338</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<div class="chart_box chart_c1" style="max-width: 3000px;">
						<table id="dataTable7" class="display">
							<thead>
								<tr>	<th>Type</th>	<th>Fuel / year</th>	<th>2017</th>	<th>2018</th>	<th>2019</th>	<th>2020</th>	<th>2021</th>	<th>2022</th>	</tr>															

							</thead>
							<tbody>
								<tr>	<td>Multi-purpose vehicles, weighing less than 4,535 kilograms</td>	<td>Battery electric</td>	<td>3291</td>	<td>5772</td>	<td>10623</td>	<td>19422</td>	<td>42571</td>	<td>81043</td>	</tr>															
<tr>	<td>Multi-purpose vehicles, weighing less than 4,535 kilograms</td>	<td>Diesel</td>	<td>105383</td>	<td>106495</td>	<td>106624</td>	<td>106447</td>	<td>105312</td>	<td>102632</td>	</tr>															
<tr>	<td>Multi-purpose vehicles, weighing less than 4,535 kilograms</td>	<td>Gasoline</td>	<td>6612488</td>	<td>7127214</td>	<td>7629263</td>	<td>8079983</td>	<td>8530842</td>	<td>8840449</td>	</tr>															
<tr>	<td>Multi-purpose vehicles, weighing less than 4,535 kilograms</td>	<td>Hybrid electric</td>	<td>40966</td>	<td>51289</td>	<td>65826</td>	<td>86571</td>	<td>124845</td>	<td>166326</td>	</tr>															
<tr>	<td>Multi-purpose vehicles, weighing less than 4,535 kilograms</td>	<td>Other fuel types</td>	<td>15</td>	<td>18</td>	<td>21</td>	<td>25</td>	<td>27</td>	<td>26</td>	</tr>															
<tr>	<td>Multi-purpose vehicles, weighing less than 4,535 kilograms</td>	<td>Plug-in hybrid electric</td>	<td>1655</td>	<td>5111</td>	<td>11132</td>	<td>16973</td>	<td>28031</td>	<td>46398</td>	</tr>															
<tr>	<td>Other vehicles, weighing less than 4,535 kilograms</td>	<td>Battery electric</td>	<td>3</td>	<td>2</td>	<td>3</td>	<td>2</td>	<td>6</td>	<td>8</td>	</tr>															
<tr>	<td>Other vehicles, weighing less than 4,535 kilograms</td>	<td>Diesel</td>	<td>875</td>	<td>883</td>	<td>871</td>	<td>862</td>	<td>877</td>	<td>949</td>	</tr>															
<tr>	<td>Other vehicles, weighing less than 4,535 kilograms</td>	<td>Gasoline</td>	<td>3018</td>	<td>2909</td>	<td>2839</td>	<td>2824</td>	<td>2946</td>	<td>2864</td>	</tr>															
<tr>	<td>Other vehicles, weighing less than 4,535 kilograms</td>	<td>Hybrid electric</td>	<td>1</td>	<td>2</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>0</td>	</tr>															
<tr>	<td>Other vehicles, weighing less than 4,535 kilograms</td>	<td>Other fuel types</td>	<td>53</td>	<td>50</td>	<td>48</td>	<td>47</td>	<td>45</td>	<td>40</td>	</tr>															
<tr>	<td>Other vehicles, weighing less than 4,535 kilograms</td>	<td>Plug-in hybrid electric</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>0</td>	</tr>															
<tr>	<td>Passenger cars, weighing less than 4,535 kilograms</td>	<td>Battery electric</td>	<td>16287</td>	<td>29994</td>	<td>55743</td>	<td>83628</td>	<td>110059</td>	<td>141974</td>	</tr>															
<tr>	<td>Passenger cars, weighing less than 4,535 kilograms</td>	<td>Diesel</td>	<td>170789</td>	<td>132714</td>	<td>129696</td>	<td>129583</td>	<td>123985</td>	<td>116037</td>	</tr>															
<tr>	<td>Passenger cars, weighing less than 4,535 kilograms</td>	<td>Gasoline</td>	<td>9883094</td>	<td>9718067</td>	<td>9502435</td>	<td>9252619</td>	<td>8992269</td>	<td>8650362</td>	</tr>															
<tr>	<td>Passenger cars, weighing less than 4,535 kilograms</td>	<td>Hybrid electric</td>	<td>130229</td>	<td>139565</td>	<td>151553</td>	<td>159941</td>	<td>169509</td>	<td>181264</td>	</tr>															
<tr>	<td>Passenger cars, weighing less than 4,535 kilograms</td>	<td>Other fuel types</td>	<td>43</td>	<td>43</td>	<td>85</td>	<td>122</td>	<td>189</td>	<td>279</td>	</tr>															
<tr>	<td>Passenger cars, weighing less than 4,535 kilograms</td>	<td>Plug-in hybrid electric</td>	<td>21934</td>	<td>33551</td>	<td>46080</td>	<td>57074</td>	<td>63858</td>	<td>69046</td>	</tr>															
<tr>	<td>Vans, weighing less than 4,535 kilograms</td>	<td>Battery electric</td>	<td>36</td>	<td>27</td>	<td>27</td>	<td>24</td>	<td>25</td>	<td>411</td>	</tr>															
<tr>	<td>Vans, weighing less than 4,535 kilograms</td>	<td>Diesel</td>	<td>44298</td>	<td>46610</td>	<td>48460</td>	<td>50063</td>	<td>52608</td>	<td>54511</td>	</tr>															
<tr>	<td>Vans, weighing less than 4,535 kilograms</td>	<td>Gasoline</td>	<td>1864478</td>	<td>1810641</td>	<td>1751202</td>	<td>1699227</td>	<td>1656141</td>	<td>1579508</td>	</tr>															
<tr>	<td>Vans, weighing less than 4,535 kilograms</td>	<td>Hybrid electric</td>	<td>1</td>	<td>1</td>	<td>2</td>	<td>100</td>	<td>5162</td>	<td>12960</td>	</tr>															
<tr>	<td>Vans, weighing less than 4,535 kilograms</td>	<td>Other fuel types</td>	<td>171</td>	<td>279</td>	<td>404</td>	<td>440</td>	<td>433</td>	<td>415</td>	</tr>															
<tr>	<td>Vans, weighing less than 4,535 kilograms</td>	<td>Plug-in hybrid electric</td>	<td>292</td>	<td>1584</td>	<td>2504</td>	<td>3054</td>	<td>4005</td>	<td>5815</td>	</tr>															
<tr>	<td>Buses</td>	<td>All fuel types</td>	<td>65652</td>	<td>65914</td>	<td>65829</td>	<td>66703</td>	<td>64206</td>	<td>66883</td>	</tr>															
<tr>	<td>Pickup trucks, weighing less than 4,535 kilograms</td>	<td>Battery electric</td>	<td>16</td>	<td>16</td>	<td>22</td>	<td>24</td>	<td>24</td>	<td>739</td>	</tr>															
<tr>	<td>Pickup trucks, weighing less than 4,535 kilograms</td>	<td>Diesel</td>	<td>379909</td>	<td>386292</td>	<td>390447</td>	<td>392077</td>	<td>403138</td>	<td>405665</td>	</tr>															
<tr>	<td>Pickup trucks, weighing less than 4,535 kilograms</td>	<td>Gasoline</td>	<td>3443800</td>	<td>3498955</td>	<td>3540090</td>	<td>3605656</td>	<td>3676807</td>	<td>3649620</td>	</tr>															
<tr>	<td>Pickup trucks, weighing less than 4,535 kilograms</td>	<td>Hybrid electric</td>	<td>867</td>	<td>813</td>	<td>775</td>	<td>738</td>	<td>3557</td>	<td>12146</td>	</tr>															
<tr>	<td>Pickup trucks, weighing less than 4,535 kilograms</td>	<td>Other fuel types</td>	<td>154</td>	<td>132</td>	<td>113</td>	<td>101</td>	<td>92</td>	<td>83</td>	</tr>															
<tr>	<td>Pickup trucks, weighing less than 4,535 kilograms</td>	<td>Plug-in hybrid electric</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>2</td>	<td>2</td>	</tr>															
<tr>	<td>Total, vehicles weighing 4,536 to 11,793 kilograms</td>	<td>Battery electric</td>	<td>7</td>	<td>8</td>	<td>8</td>	<td>7</td>	<td>11</td>	<td>37</td>	</tr>															
<tr>	<td>Total, vehicles weighing 4,536 to 11,793 kilograms</td>	<td>Diesel</td>	<td>383726</td>	<td>394683</td>	<td>401689</td>	<td>411098</td>	<td>436134</td>	<td>449579</td>	</tr>															
<tr>	<td>Total, vehicles weighing 4,536 to 11,793 kilograms</td>	<td>Gasoline</td>	<td>174294</td>	<td>183334</td>	<td>190070</td>	<td>196497</td>	<td>211972</td>	<td>224634</td>	</tr>															
<tr>	<td>Total, vehicles weighing 4,536 to 11,793 kilograms</td>	<td>Hybrid electric</td>	<td>1</td>	<td>0</td>	<td>0</td>	<td>1</td>	<td>1</td>	<td>1</td>	</tr>															
<tr>	<td>Total, vehicles weighing 4,536 to 11,793 kilograms</td>	<td>Other fuel types</td>	<td>44</td>	<td>47</td>	<td>56</td>	<td>74</td>	<td>73</td>	<td>75</td>	</tr>															
<tr>	<td>Total, vehicles weighing 4,536 to 11,793 kilograms</td>	<td>Plug-in hybrid electric</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>3</td>	</tr>															
<tr>	<td>Total, vehicles weighing 11,794 kilograms or more</td>	<td>All fuel types</td>	<td>541274</td>	<td>561344</td>	<td>573853</td>	<td>572883</td>	<td>597666</td>	<td>609850</td>	</tr>															
<tr>	<td>Motorcycles and mopeds</td>	<td>All fuel types</td>	<td>729687</td>	<td>738685</td>	<td>747892</td>	<td>749306</td>	<td>816443</td>	<td>829892</td>	</tr>															

							</tbody>
						</table>
					</div>
					<div class="chart_box chart_c2">
						<table id="dataTable3" class="display">
							<thead>
								<tr>
									<th>year</th>
									<th>Cars</th>
									<th>School Buses</th>
									<th>Urban Transit</th>
									<th>Inter-City Buses</th>
									<th>Passenger Light Trucks</th>
									<th>Freight Light Trucks</th>
									<th>Medium Trucks</th>
									<th>Heavy Trucks</th>
								</tr>

							</thead>
							<tbody>
								<tr>
									<td>2000</td>
									<td>18426.148</td>
									<td>26057.768535</td>
									<td>55666.259151</td>
									<td>76563.862237</td>
									<td>18632.608822</td>
									<td>21658.662745</td>
									<td>24978.103593</td>
									<td>93281.100875</td>
								</tr>
								<tr>
									<td>2001</td>
									<td>17940.622</td>
									<td>25200.96128</td>
									<td>60724.209161</td>
									<td>66474.049771</td>
									<td>18059.743133</td>
									<td>21160.062835</td>
									<td>26506.304334</td>
									<td>83963.591181</td>
								</tr>
								<tr>
									<td>2002</td>
									<td>18469.138</td>
									<td>26457.088592</td>
									<td>65998.03573</td>
									<td>76329.962513</td>
									<td>18551.046505</td>
									<td>21472.203276</td>
									<td>24559.602683</td>
									<td>82549.953212</td>
								</tr>
								<tr>
									<td>2003</td>
									<td>18433.462</td>
									<td>29611.477832</td>
									<td>69624.748428</td>
									<td>70615.890762</td>
									<td>18413.855207</td>
									<td>21301.830623</td>
									<td>27227.79118</td>
									<td>85738.819115</td>
								</tr>
								<tr>
									<td>2004</td>
									<td>18203.798</td>
									<td>25022.650446</td>
									<td>69469.684035</td>
									<td>67178.918873</td>
									<td>18176.918067</td>
									<td>20966.521359</td>
									<td>28330.841132</td>
									<td>90366.877313</td>
								</tr>
								<tr>
									<td>2005</td>
									<td>18241.198</td>
									<td>27799.059317</td>
									<td>74293.970181</td>
									<td>70893.770992</td>
									<td>18235.439498</td>
									<td>20917.650624</td>
									<td>25383.861578</td>
									<td>94197.089049</td>
								</tr>
								<tr>
									<td>2006</td>
									<td>17781.746</td>
									<td>31161.44171</td>
									<td>78280.929536</td>
									<td>56005.554964</td>
									<td>17787.052744</td>
									<td>20720.024273</td>
									<td>28748.231817</td>
									<td>86979.384945</td>
								</tr>
								<tr>
									<td>2007</td>
									<td>17845.378</td>
									<td>26320.451693</td>
									<td>60920.655862</td>
									<td>62552.401407</td>
									<td>17765.409025</td>
									<td>20808.020177</td>
									<td>26999.494228</td>
									<td>87328.496884</td>
								</tr>
								<tr>
									<td>2008</td>
									<td>16904.576</td>
									<td>27206.813958</td>
									<td>61466.036573</td>
									<td>59550.908957</td>
									<td>16794.516293</td>
									<td>19531.802663</td>
									<td>25213.1244189999</td>
									<td>85737.883958</td>
								</tr>
								<tr>
									<td>2009</td>
									<td>16848.268</td>
									<td>30949.911159</td>
									<td>63737.202273</td>
									<td>57492.112749</td>
									<td>16730.109351</td>
									<td>19238.072695</td>
									<td>23555.814171</td>
									<td>90034.210987</td>
								</tr>
								<tr>
									<td>2010</td>
									<td>16857.86</td>
									<td>33049.030647</td>
									<td>68071.510446</td>
									<td>52311.588517</td>
									<td>16909.751903</td>
									<td>19416.888351</td>
									<td>26238.11397</td>
									<td>90619.973985</td>
								</tr>
								<tr>
									<td>2011</td>
									<td>16671.452</td>
									<td>33154.850373</td>
									<td>74815.315289</td>
									<td>56690.731422</td>
									<td>16746.024538</td>
									<td>19080.573593</td>
									<td>25512.350622</td>
									<td>91694.747499</td>
								</tr>
								<tr>
									<td>2012</td>
									<td>16447.865</td>
									<td>31119.871479</td>
									<td>68499.862958</td>
									<td>47729.972181</td>
									<td>16705.289176</td>
									<td>19299.008763</td>
									<td>25322.193813</td>
									<td>89289.547996</td>
								</tr>
								<tr>
									<td>2013</td>
									<td>16270.41</td>
									<td>28670.060976</td>
									<td>68629.568521</td>
									<td>48810.914693</td>
									<td>16697.359876</td>
									<td>19229.986595</td>
									<td>25822.451142</td>
									<td>90043.503501</td>
								</tr>
								<tr>
									<td>2014</td>
									<td>15332.011</td>
									<td>24603.333748</td>
									<td>67376.444966</td>
									<td>42631.915324</td>
									<td>15892.582376</td>
									<td>18279.23146</td>
									<td>24657.076107</td>
									<td>86706.614737</td>
								</tr>
								<tr>
									<td>2015</td>
									<td>15201.861</td>
									<td>24941.358147</td>
									<td>60584.198531</td>
									<td>40492.931352</td>
									<td>15819.71037</td>
									<td>18082.490797</td>
									<td>23294.481628</td>
									<td>80857.870378</td>
								</tr>
								<tr>
									<td>2016</td>
									<td>15098.402</td>
									<td>26359.02136</td>
									<td>51520.054929</td>
									<td>31707.703407</td>
									<td>15983.300324</td>
									<td>18342.138807</td>
									<td>22733.363941</td>
									<td>76871.010532</td>
								</tr>
								<tr>
									<td>2017</td>
									<td>14777.356</td>
									<td>27491.975748</td>
									<td>61444.242466</td>
									<td>50857.063823</td>
									<td>15808.96393</td>
									<td>18226.004515</td>
									<td>23063.334209</td>
									<td>80729.706516</td>
								</tr>
								<tr>
									<td>2018</td>
									<td>14504.614</td>
									<td>25618.547557</td>
									<td>54315.571107</td>
									<td>48728.560627</td>
									<td>15720.705087</td>
									<td>18136.541329</td>
									<td>23804.863819</td>
									<td>81678.281339</td>
								</tr>
								<tr>
									<td>2019</td>
									<td>14716.46</td>
									<td>25428.797849</td>
									<td>55081.726078</td>
									<td>46730.07034</td>
									<td>15967.935604</td>
									<td>18433.971293</td>
									<td>23639.354833</td>
									<td>80461.379123</td>
								</tr>
								<tr>
									<td>2020</td>
									<td>12258.46</td>
									<td>20489.480283</td>
									<td>41549.033155</td>
									<td>32793.166232</td>
									<td>13385.344271</td>
									<td>15524.206793</td>
									<td>20274.312933</td>
									<td>70814.88608</td>
								</tr>
								<tr>
									<td>2021</td>
									<td>12805.529</td>
									<td>21078.679673</td>
									<td>41111.352662</td>
									<td>32486.44215</td>
									<td>14069.580126</td>
									<td>16308.151144</td>
									<td>22235.246711</td>
									<td>74653.619152</td>
								</tr>

								<!-- Add more rows as needed -->
							</tbody>
						</table>
					</div>
					<div class="chart_box chart_d1">
						<canvas class="chart" id="chart_d1"></canvas>
					</div>
					<div class="chart_box chart_d2">
						<table id="dataTable4" class="display">
							<thead>
								<tr>
									<th>year</th>
									<th>automóviles</th>
									<th>camionetas</th>
									<th>autobuses</th>
									<th>camiones</th>
									<th>motocicletas</th>
								</tr>

							</thead>
							<tbody>
								<tr>
									<td>2000</td>
									<td>22958.158806</td>
									<td>17472.851292</td>
									<td>56971.815672</td>
									<td>29201.507239</td>
									<td>701.362686</td>
								</tr>
								<tr>
									<td>2001</td>
									<td>21010.105141</td>
									<td>16339.471125</td>
									<td>42417.667273</td>
									<td>26305.54811</td>
									<td>747.479204</td>
								</tr>
								<tr>
									<td>2002</td>
									<td>20179.64292</td>
									<td>15619.336759</td>
									<td>40097.72399</td>
									<td>24484.558183</td>
									<td>589.295589</td>
								</tr>
								<tr>
									<td>2003</td>
									<td>20665.819231</td>
									<td>15410.945152</td>
									<td>41310.648843</td>
									<td>24167.359536</td>
									<td>527.890586</td>
								</tr>
								<tr>
									<td>2004</td>
									<td>20947.038864</td>
									<td>15414.752977</td>
									<td>51625.845634</td>
									<td>25041.764128</td>
									<td>477.079266</td>
								</tr>
								<tr>
									<td>2005</td>
									<td>19528.264201</td>
									<td>17260.161542</td>
									<td>54087.814417</td>
									<td>26464.689523</td>
									<td>873.4676</td>
								</tr>
								<tr>
									<td>2006</td>
									<td>17853.451147</td>
									<td>17212.816734</td>
									<td>45693.046948</td>
									<td>29814.435542</td>
									<td>1249.869072</td>
								</tr>
								<tr>
									<td>2007</td>
									<td>17454.038224</td>
									<td>17373.771025</td>
									<td>49201.469631</td>
									<td>33215.506809</td>
									<td>1685.742479</td>
								</tr>
								<tr>
									<td>2008</td>
									<td>16379.162316</td>
									<td>17131.617491</td>
									<td>51480.624879</td>
									<td>36944.802606</td>
									<td>2092.660763</td>
								</tr>
								<tr>
									<td>2009</td>
									<td>15454.814708</td>
									<td>16296.10958</td>
									<td>46778.177285</td>
									<td>33368.589183</td>
									<td>3089.856479</td>
								</tr>
								<tr>
									<td>2010</td>
									<td>15387.793322</td>
									<td>15762.738852</td>
									<td>52791.117805</td>
									<td>34472.883986</td>
									<td>4592.676911</td>
								</tr>
								<tr>
									<td>2011</td>
									<td>14681.460133</td>
									<td>15336.393308</td>
									<td>51366.700571</td>
									<td>36920.514051</td>
									<td>6620.782349</td>
								</tr>
								<tr>
									<td>2012</td>
									<td>14086.086047</td>
									<td>15132.330326</td>
									<td>50129.686782</td>
									<td>36462.964144</td>
									<td>6536.45136</td>
								</tr>
								<tr>
									<td>2013</td>
									<td>13937.053695</td>
									<td>12904.554936</td>
									<td>49415.14569</td>
									<td>31616.022351</td>
									<td>6283.050186</td>
								</tr>
								<tr>
									<td>2014</td>
									<td>13581.507805</td>
									<td>12277.699044</td>
									<td>49365.72285</td>
									<td>32162.866859</td>
									<td>6339.059869</td>
								</tr>
								<tr>
									<td>2015</td>
									<td>13343.50716</td>
									<td>12173.587395</td>
									<td>49742.481776</td>
									<td>35106.416461</td>
									<td>6488.508275</td>
								</tr>
								<tr>
									<td>2016</td>
									<td>13544.629606</td>
									<td>12725.329106</td>
									<td>50579.831494</td>
									<td>33559.560861</td>
									<td>6142.887403</td>
								</tr>
								<tr>
									<td>2017</td>
									<td>11975.502876</td>
									<td>11372.980896</td>
									<td>45483.631955</td>
									<td>31078.301245</td>
									<td>4768.727388</td>
								</tr>
								<tr>
									<td>2018</td>
									<td>12375.950106</td>
									<td>12072.048455</td>
									<td>40630.861795</td>
									<td>29770.286888</td>
									<td>4515.650854</td>
								</tr>
								<tr>
									<td>2019</td>
									<td>10330.703237</td>
									<td>10388.916879</td>
									<td>32386.164918</td>
									<td>21975.543928</td>
									<td>3334.507773</td>
								</tr>
								<tr>
									<td>2020</td>
									<td>8090.155777</td>
									<td>8375.313369</td>
									<td>33564.746401</td>
									<td>22084.425749</td>
									<td>2413.546931</td>
								</tr>
								<tr>
									<td>2021</td>
									<td>13274.688031</td>
									<td>13708.266487</td>
									<td>46178.417059</td>
									<td>36599.272922</td>
									<td>3647.084617</td>
								</tr>
								<tr>
									<td>2022</td>
									<td>11686.501847</td>
									<td>12289.544859</td>
									<td>44474.778004</td>
									<td>36365.991155</td>
									<td>2881.001202</td>
								</tr>

							</tbody>
						</table>
					</div>
					<div class="chart_box chart_e1">
						<canvas class="chart" id="chart_e1"></canvas>
					</div>
					<div class="chart_box chart_e2">
						<table id="dataTable5" class="display">
							<thead>
								<tr>
									<th>year</th>
									<th>LDV</th>
									<th>Bus</th>
									<th>Road tractor</th>
									<th>Lorries</th>
									<th>semi-trailer</th>
									<th>trailer</th>
								</tr>

							</thead>
							<tbody>
								<tr>
									<td>1990</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>1991</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>1992</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>1993</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>1994</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>1995</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>1996</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>1997</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>1998</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>1999</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2000</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2001</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2002</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2003</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2004</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2005</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2006</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2007</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2008</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2009</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2010</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2011</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2012</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2013</td>
									<td>1401697.508</td>
									<td>3563.193</td>
									<td>-</td>
									<td>162085.527</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2014</td>
									<td>1432182.659</td>
									<td>3719.607</td>
									<td>-</td>
									<td>164450.569</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2015</td>
									<td>1461947.669</td>
									<td>4215.576</td>
									<td>-</td>
									<td>169287.311</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2016</td>
									<td>1483206.835</td>
									<td>4385.859</td>
									<td>-</td>
									<td>173573.588</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2017</td>
									<td>1493648.377</td>
									<td>4246.003</td>
									<td>-</td>
									<td>178144.956</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2018</td>
									<td>1560680.526</td>
									<td>4434.381</td>
									<td>-</td>
									<td>170552.884627907</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2019</td>
									<td>1535931.165</td>
									<td>4326.612</td>
									<td>-</td>
									<td>174203.322498648</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2020</td>
									<td>1372529.922</td>
									<td>2796.225</td>
									<td>-</td>
									<td>165228.620393814</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2021</td>
									<td>1411914.874</td>
									<td>3649.272</td>
									<td>-</td>
									<td>176355.749860887</td>
									<td>-</td>
									<td>-</td>
								</tr>
								<tr>
									<td>2022</td>
									<td>1271983.368</td>
									<td>4952.661</td>
									<td>-</td>
									<td>178825.747107239</td>
									<td>-</td>
									<td>-</td>
								</tr>

								<!-- Add more rows as needed -->
							</tbody>
						</table>
					</div>
					<div class="chart_box chart_f1">
						<canvas class="chart" id="chart_f1"></canvas>
					</div>
					<div class="chart_box chart_f2">
						<table id="dataTable6" class="display" style="min-width: 300%;">
							<thead>
								<tr>
									<th>Year<br></th>
									<th>Passenger Cars<br>Gasoline
									</th>
									<th>Light-Duty Trucks<br>Gasoline
									</th>
									<th>Heavy-Duty Vehicles<br>Gasoline
									</th>
									<th>Motorcycles<br>Gasoline
									</th>
									<th>Passenger Cars<br>Diesel
									</th>
									<th>Light-Duty Trucks<br>Diesel
									</th>
									<th>Heavy-Duty Trucks<br>Diesel
									</th>
									<th>Heavy-Duty Buses<br>Diesel
									</th>
									<th>Light-Duty Cars<br> Ethanol-Flex Fuel ICE
									</th>
									<th>Light-Duty Cars<br> CNG ICE
									</th>
									<th>Light-Duty Cars<br> CNG Bi-fuel
									</th>
									<th>Light-Duty Cars<br> Biodiesel (BD100)
									</th>
									<th>Light-Duty Cars<br> NEVs
									</th>
									<th>Light-Duty Cars<br> Electric Vehicle
									</th>
									<th>Light-Duty Cars<br> SI PHEV - Electricity
									</th>
									<th>Light-Duty Cars<br> Fuel Cell Hydrogen
									</th>
									<th>Light-Duty Trucks<br> Ethanol-Flex Fuel ICE
									</th>
									<th>Light-Duty Trucks<br> CNG ICE
									</th>
									<th>Light-Duty Trucks<br> CNG Bi-fuel
									</th>
									<th>Light-Duty Trucks<br> LPG ICE
									</th>
									<th>Light-Duty Trucks<br> LPG Bi-fuel
									</th>
									<th>Light-Duty Trucks<br> LNG
									</th>
									<th>Light-Duty Trucks<br> Biodiesel (BD100)
									</th>
									<th>Light-Duty Trucks<br> Electric Vehicle
									</th>
									<th>Light-Duty Trucks<br> SI PHEV - Electricity
									</th>
									<th>Light-Duty Trucks<br> Fuel Cell Hydrogen
									</th>
									<th>Medium-Duty Trucks<br> CNG ICE
									</th>
									<th>Medium-Duty Trucks<br> CNG Bi-fuel
									</th>
									<th>Medium-Duty Trucks<br> LPG ICE
									</th>
									<th>Medium-Duty Trucks<br> LPG Bi-fuel
									</th>
									<th>Medium-Duty Trucks<br> LNG
									</th>
									<th>Medium-Duty Trucks<br> Biodiesel (BD100)
									</th>
									<th>Heavy-Duty Trucks<br> Neat Ethanol ICE
									</th>
									<th>Heavy-Duty Trucks<br> CNG ICE
									</th>
									<th>Heavy-Duty Trucks<br> LPG ICE
									</th>
									<th>Heavy-Duty Trucks<br> LPG Bi-fuel
									</th>
									<th>Heavy-Duty Trucks<br> LNG
									</th>
									<th>Heavy-Duty Trucks<br> Biodiesel (BD100)
									</th>
									<th>Buses<br> CNG ICE
									</th>
									<th>Buses<br> LPG ICE
									</th>
									<th>Buses<br> LNG
									</th>
									<th>Buses<br> Biodiesel (BD100)
									</th>
									<th>Buses<br> Electric
									</th>
									<th>Buses<br> Fuel Cell Hydrogen
									</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>1990</td>
									<td>1455</td>
									<td>427.7</td>
									<td>44.3</td>
									<td>11.4</td>
									<td>40.8</td>
									<td>19.8</td>
									<td>136.4</td>
									<td>8.3</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>20.6</td>
									<td>50.7</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>178.9</td>
									<td>42</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0.5</td>
									<td>201.9</td>
									<td>15</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>23.1</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
								</tr>
								<tr>
									<td>1991</td>
									<td>1441</td>
									<td>464.8</td>
									<td>43.9</td>
									<td>11.5</td>
									<td>38.1</td>
									<td>21.2</td>
									<td>142.3</td>
									<td>8.7</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>21.6</td>
									<td>53</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>168</td>
									<td>39.4</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>1.3</td>
									<td>199.1</td>
									<td>14.8</td>
									<td>0</td>
									<td>0</td>
									<td>20.3</td>
									<td>23.1</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
								</tr>
								<tr>
									<td>1992</td>
									<td>1456.9</td>
									<td>513.5</td>
									<td>44.5</td>
									<td>11.8</td>
									<td>36</td>
									<td>23.2</td>
									<td>151.4</td>
									<td>9.2</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>4.6</td>
									<td>0.1</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>19.2</td>
									<td>47.3</td>
									<td>0</td>
									<td>0</td>
									<td>0.4</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>149</td>
									<td>35</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>2.2</td>
									<td>183.3</td>
									<td>13.6</td>
									<td>0</td>
									<td>0</td>
									<td>33.7</td>
									<td>21.6</td>
									<td>0.2</td>
									<td>0</td>
									<td>0.2</td>
									<td>0</td>
								</tr>
								<tr>
									<td>1993</td>
									<td>1454.2</td>
									<td>558.2</td>
									<td>44.5</td>
									<td>12</td>
									<td>33.3</td>
									<td>25</td>
									<td>158.9</td>
									<td>9.7</td>
									<td>0.1</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>3.7</td>
									<td>0.1</td>
									<td>0</td>
									<td>0</td>
									<td>0.1</td>
									<td>0</td>
									<td>0</td>
									<td>24.7</td>
									<td>60.8</td>
									<td>0</td>
									<td>0</td>
									<td>0.3</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>175.6</td>
									<td>41.2</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>3.1</td>
									<td>222.6</td>
									<td>16.5</td>
									<td>0.1</td>
									<td>0</td>
									<td>48</td>
									<td>26.5</td>
									<td>3.2</td>
									<td>0</td>
									<td>0.3</td>
									<td>0</td>
								</tr>
								<tr>
									<td>1994</td>
									<td>1457.3</td>
									<td>607.3</td>
									<td>44.7</td>
									<td>12.3</td>
									<td>30.6</td>
									<td>26.9</td>
									<td>167.6</td>
									<td>10.2</td>
									<td>0.1</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>5.5</td>
									<td>0.2</td>
									<td>0</td>
									<td>0</td>
									<td>0.1</td>
									<td>0</td>
									<td>0.1</td>
									<td>23.7</td>
									<td>58.2</td>
									<td>0</td>
									<td>0</td>
									<td>0.5</td>
									<td>0</td>
									<td>0</td>
									<td>1.4</td>
									<td>16.2</td>
									<td>169</td>
									<td>39.7</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>3.9</td>
									<td>219.4</td>
									<td>16.3</td>
									<td>0.1</td>
									<td>0</td>
									<td>61.4</td>
									<td>26.3</td>
									<td>5.2</td>
									<td>0</td>
									<td>0.4</td>
									<td>0</td>
								</tr>
								<tr>
									<td>1995</td>
									<td>1461</td>
									<td>659.4</td>
									<td>44.9</td>
									<td>12.5</td>
									<td>27.7</td>
									<td>29</td>
									<td>176.7</td>
									<td>10.7</td>
									<td>0.3</td>
									<td>0.1</td>
									<td>0.2</td>
									<td>0</td>
									<td>8.6</td>
									<td>0.3</td>
									<td>0</td>
									<td>0</td>
									<td>0.3</td>
									<td>0</td>
									<td>0.4</td>
									<td>22.7</td>
									<td>55.7</td>
									<td>0</td>
									<td>0</td>
									<td>0.8</td>
									<td>0</td>
									<td>0</td>
									<td>1.7</td>
									<td>19.5</td>
									<td>163.7</td>
									<td>38.4</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>4.8</td>
									<td>216.5</td>
									<td>16.1</td>
									<td>0.2</td>
									<td>0</td>
									<td>75.9</td>
									<td>26.2</td>
									<td>6.6</td>
									<td>0</td>
									<td>0.5</td>
									<td>0</td>
								</tr>
								<tr>
									<td>1996</td>
									<td>1461.5</td>
									<td>712.7</td>
									<td>45.1</td>
									<td>12.8</td>
									<td>24.7</td>
									<td>31.1</td>
									<td>186</td>
									<td>11.3</td>
									<td>1</td>
									<td>0.2</td>
									<td>0.7</td>
									<td>0</td>
									<td>10.1</td>
									<td>0.3</td>
									<td>0</td>
									<td>0</td>
									<td>1</td>
									<td>0.2</td>
									<td>1.6</td>
									<td>23.7</td>
									<td>58.2</td>
									<td>0</td>
									<td>0</td>
									<td>1</td>
									<td>0</td>
									<td>0</td>
									<td>2</td>
									<td>23.2</td>
									<td>164.7</td>
									<td>38.7</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>5.7</td>
									<td>221.2</td>
									<td>16.4</td>
									<td>0.2</td>
									<td>0</td>
									<td>92.2</td>
									<td>27.1</td>
									<td>7.3</td>
									<td>0</td>
									<td>0.6</td>
									<td>0</td>
								</tr>
								<tr>
									<td>1997</td>
									<td>1467.4</td>
									<td>771.7</td>
									<td>45.4</td>
									<td>13.1</td>
									<td>21.6</td>
									<td>33.5</td>
									<td>196.4</td>
									<td>11.9</td>
									<td>1.9</td>
									<td>0.6</td>
									<td>2</td>
									<td>0</td>
									<td>13.5</td>
									<td>0.4</td>
									<td>0</td>
									<td>0</td>
									<td>1.9</td>
									<td>0.6</td>
									<td>4.9</td>
									<td>24.2</td>
									<td>59.4</td>
									<td>0.1</td>
									<td>0</td>
									<td>1.3</td>
									<td>0</td>
									<td>0</td>
									<td>2.3</td>
									<td>26.4</td>
									<td>164.7</td>
									<td>38.6</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>6.6</td>
									<td>223.9</td>
									<td>16.6</td>
									<td>0.3</td>
									<td>0</td>
									<td>107.1</td>
									<td>27.6</td>
									<td>9.2</td>
									<td>0</td>
									<td>0.8</td>
									<td>0</td>
								</tr>
								<tr>
									<td>1998</td>
									<td>1467.7</td>
									<td>831</td>
									<td>45.5</td>
									<td>13.4</td>
									<td>18.1</td>
									<td>35.8</td>
									<td>206.7</td>
									<td>12.5</td>
									<td>2.6</td>
									<td>1.4</td>
									<td>4.4</td>
									<td>0</td>
									<td>16.1</td>
									<td>0.5</td>
									<td>0</td>
									<td>0</td>
									<td>2.6</td>
									<td>1.3</td>
									<td>10.7</td>
									<td>24.6</td>
									<td>60.5</td>
									<td>0.1</td>
									<td>0</td>
									<td>1.6</td>
									<td>0</td>
									<td>0</td>
									<td>2.6</td>
									<td>30.3</td>
									<td>166</td>
									<td>38.9</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>7.7</td>
									<td>227.9</td>
									<td>16.9</td>
									<td>0.3</td>
									<td>0</td>
									<td>125.1</td>
									<td>28.3</td>
									<td>13.4</td>
									<td>0</td>
									<td>0.9</td>
									<td>0</td>
								</tr>
								<tr>
									<td>1999</td>
									<td>1460.2</td>
									<td>888.9</td>
									<td>45.4</td>
									<td>13.6</td>
									<td>14.5</td>
									<td>38.1</td>
									<td>216.4</td>
									<td>13.1</td>
									<td>5.8</td>
									<td>2.6</td>
									<td>8.6</td>
									<td>0</td>
									<td>20.2</td>
									<td>0.6</td>
									<td>0</td>
									<td>0</td>
									<td>5.9</td>
									<td>2.5</td>
									<td>20.8</td>
									<td>21.3</td>
									<td>52.4</td>
									<td>0.1</td>
									<td>0</td>
									<td>2</td>
									<td>0</td>
									<td>0</td>
									<td>3</td>
									<td>35</td>
									<td>166.9</td>
									<td>39.2</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>8.9</td>
									<td>230.9</td>
									<td>17.2</td>
									<td>0.5</td>
									<td>0</td>
									<td>146.7</td>
									<td>28.9</td>
									<td>19.5</td>
									<td>0</td>
									<td>1.2</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2000</td>
									<td>1467.2</td>
									<td>939.7</td>
									<td>42.2</td>
									<td>12.2</td>
									<td>12.5</td>
									<td>39.4</td>
									<td>219.7</td>
									<td>13</td>
									<td>18.2</td>
									<td>4.8</td>
									<td>15.7</td>
									<td>1.6</td>
									<td>41.5</td>
									<td>1.2</td>
									<td>0</td>
									<td>0</td>
									<td>18.9</td>
									<td>4.5</td>
									<td>38.2</td>
									<td>22.3</td>
									<td>54.8</td>
									<td>0.1</td>
									<td>6</td>
									<td>4.1</td>
									<td>0</td>
									<td>0</td>
									<td>3.3</td>
									<td>38.1</td>
									<td>167.8</td>
									<td>39.4</td>
									<td>0</td>
									<td>8.4</td>
									<td>0</td>
									<td>9.4</td>
									<td>224.7</td>
									<td>16.7</td>
									<td>0.6</td>
									<td>23.2</td>
									<td>153.1</td>
									<td>27.8</td>
									<td>22.9</td>
									<td>1.1</td>
									<td>2</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2001</td>
									<td>1470.3</td>
									<td>978</td>
									<td>41.1</td>
									<td>11.1</td>
									<td>11.3</td>
									<td>41.5</td>
									<td>231.5</td>
									<td>11.4</td>
									<td>22.3</td>
									<td>7.9</td>
									<td>25.9</td>
									<td>3.3</td>
									<td>55.7</td>
									<td>1.6</td>
									<td>0</td>
									<td>0</td>
									<td>23.2</td>
									<td>7.5</td>
									<td>63.4</td>
									<td>22.9</td>
									<td>56.5</td>
									<td>0.1</td>
									<td>12</td>
									<td>5.6</td>
									<td>0</td>
									<td>0</td>
									<td>3.5</td>
									<td>40.8</td>
									<td>156.7</td>
									<td>36.8</td>
									<td>0</td>
									<td>17.5</td>
									<td>0</td>
									<td>10.7</td>
									<td>213.6</td>
									<td>15.9</td>
									<td>0.7</td>
									<td>48.7</td>
									<td>148.3</td>
									<td>22.5</td>
									<td>24.8</td>
									<td>2.3</td>
									<td>4</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2002</td>
									<td>1481.3</td>
									<td>1021.7</td>
									<td>40.7</td>
									<td>11.2</td>
									<td>9.8</td>
									<td>43.1</td>
									<td>234.8</td>
									<td>11.7</td>
									<td>27.1</td>
									<td>10.8</td>
									<td>35.2</td>
									<td>4.4</td>
									<td>99.6</td>
									<td>2.9</td>
									<td>0</td>
									<td>0</td>
									<td>28.4</td>
									<td>10.2</td>
									<td>86.5</td>
									<td>23.8</td>
									<td>58.8</td>
									<td>0.1</td>
									<td>19.1</td>
									<td>10</td>
									<td>0</td>
									<td>0</td>
									<td>4.4</td>
									<td>51</td>
									<td>166.1</td>
									<td>39</td>
									<td>0</td>
									<td>28.7</td>
									<td>0</td>
									<td>12.8</td>
									<td>233.8</td>
									<td>17.4</td>
									<td>0.8</td>
									<td>74.5</td>
									<td>177</td>
									<td>24.5</td>
									<td>25.7</td>
									<td>3.6</td>
									<td>5.7</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2003</td>
									<td>1473.4</td>
									<td>1053.2</td>
									<td>40.7</td>
									<td>11.4</td>
									<td>8.7</td>
									<td>44.7</td>
									<td>245.4</td>
									<td>11.6</td>
									<td>30.7</td>
									<td>12.7</td>
									<td>41.6</td>
									<td>3.1</td>
									<td>40.5</td>
									<td>3.9</td>
									<td>0</td>
									<td>0</td>
									<td>32.2</td>
									<td>12.1</td>
									<td>102.3</td>
									<td>24.7</td>
									<td>61.2</td>
									<td>0.2</td>
									<td>16</td>
									<td>13.3</td>
									<td>0</td>
									<td>0</td>
									<td>6</td>
									<td>69.5</td>
									<td>176.8</td>
									<td>41.5</td>
									<td>0</td>
									<td>25.1</td>
									<td>0</td>
									<td>15.3</td>
									<td>254</td>
									<td>18.9</td>
									<td>0.9</td>
									<td>62.1</td>
									<td>203.6</td>
									<td>25.7</td>
									<td>29.4</td>
									<td>2.9</td>
									<td>6.8</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2004</td>
									<td>1478.1</td>
									<td>1118.6</td>
									<td>38.4</td>
									<td>15</td>
									<td>7.9</td>
									<td>48.1</td>
									<td>245.6</td>
									<td>11.8</td>
									<td>37.3</td>
									<td>15.3</td>
									<td>47.3</td>
									<td>5.4</td>
									<td>52.1</td>
									<td>2.1</td>
									<td>0</td>
									<td>0</td>
									<td>39.1</td>
									<td>13.7</td>
									<td>72.7</td>
									<td>20.4</td>
									<td>61.5</td>
									<td>0.2</td>
									<td>32.7</td>
									<td>5.6</td>
									<td>0</td>
									<td>0</td>
									<td>5.3</td>
									<td>53.6</td>
									<td>118.3</td>
									<td>42.9</td>
									<td>0</td>
									<td>48.1</td>
									<td>0</td>
									<td>11.9</td>
									<td>158.6</td>
									<td>13.9</td>
									<td>2.5</td>
									<td>117.5</td>
									<td>218.8</td>
									<td>31.1</td>
									<td>29.5</td>
									<td>5.5</td>
									<td>7.2</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2005</td>
									<td>1464.9</td>
									<td>1156.1</td>
									<td>35.8</td>
									<td>13.8</td>
									<td>7.5</td>
									<td>49.6</td>
									<td>248.5</td>
									<td>11.5</td>
									<td>45.6</td>
									<td>14.2</td>
									<td>36.3</td>
									<td>16.5</td>
									<td>57.6</td>
									<td>1.6</td>
									<td>0</td>
									<td>0</td>
									<td>47.9</td>
									<td>12.7</td>
									<td>63.8</td>
									<td>28.6</td>
									<td>59.4</td>
									<td>0.2</td>
									<td>108.7</td>
									<td>4.7</td>
									<td>0</td>
									<td>0</td>
									<td>6.2</td>
									<td>51.5</td>
									<td>100.3</td>
									<td>41.4</td>
									<td>0</td>
									<td>157</td>
									<td>0</td>
									<td>11.7</td>
									<td>160.3</td>
									<td>10.6</td>
									<td>2.5</td>
									<td>382.2</td>
									<td>219</td>
									<td>24.7</td>
									<td>29.2</td>
									<td>17.1</td>
									<td>7.6</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2006</td>
									<td>1436.5</td>
									<td>1185.5</td>
									<td>38.2</td>
									<td>19.2</td>
									<td>7.1</td>
									<td>51.7</td>
									<td>260.9</td>
									<td>12.3</td>
									<td>53.6</td>
									<td>13.1</td>
									<td>22.9</td>
									<td>43.5</td>
									<td>69.8</td>
									<td>1.9</td>
									<td>0</td>
									<td>0</td>
									<td>56.1</td>
									<td>13.4</td>
									<td>61.2</td>
									<td>25.5</td>
									<td>49.1</td>
									<td>0.2</td>
									<td>318.8</td>
									<td>5.8</td>
									<td>0</td>
									<td>0</td>
									<td>6</td>
									<td>58</td>
									<td>85</td>
									<td>39.8</td>
									<td>0</td>
									<td>506.9</td>
									<td>0</td>
									<td>15.3</td>
									<td>136.2</td>
									<td>11.1</td>
									<td>3.3</td>
									<td>1084.3</td>
									<td>256.1</td>
									<td>25.1</td>
									<td>30.6</td>
									<td>50.9</td>
									<td>9.2</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2007</td>
									<td>1430.3</td>
									<td>1203.3</td>
									<td>35.4</td>
									<td>21.4</td>
									<td>6.3</td>
									<td>51.4</td>
									<td>266.8</td>
									<td>12.7</td>
									<td>65.8</td>
									<td>12.7</td>
									<td>17.3</td>
									<td>51.7</td>
									<td>70.3</td>
									<td>1.3</td>
									<td>0</td>
									<td>0</td>
									<td>68.9</td>
									<td>11.9</td>
									<td>54.5</td>
									<td>20.5</td>
									<td>28.8</td>
									<td>0.2</td>
									<td>423.2</td>
									<td>6.1</td>
									<td>0</td>
									<td>0</td>
									<td>6</td>
									<td>47.1</td>
									<td>68.4</td>
									<td>18.4</td>
									<td>0</td>
									<td>673.9</td>
									<td>0</td>
									<td>17.1</td>
									<td>118.9</td>
									<td>10.7</td>
									<td>2.7</td>
									<td>1502.5</td>
									<td>273.9</td>
									<td>24</td>
									<td>17.4</td>
									<td>69.6</td>
									<td>4.3</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2008</td>
									<td>1403.8</td>
									<td>1171.4</td>
									<td>36.3</td>
									<td>20.8</td>
									<td>5.8</td>
									<td>49.5</td>
									<td>272.5</td>
									<td>12.9</td>
									<td>76.2</td>
									<td>11.3</td>
									<td>11.6</td>
									<td>42.8</td>
									<td>74.4</td>
									<td>1.9</td>
									<td>0</td>
									<td>0</td>
									<td>79.7</td>
									<td>9.1</td>
									<td>23.2</td>
									<td>10</td>
									<td>22.3</td>
									<td>0.3</td>
									<td>368.7</td>
									<td>5.7</td>
									<td>0</td>
									<td>0</td>
									<td>12.7</td>
									<td>43.2</td>
									<td>55.8</td>
									<td>41.7</td>
									<td>0</td>
									<td>652.5</td>
									<td>0</td>
									<td>14.9</td>
									<td>103.5</td>
									<td>10.9</td>
									<td>3.6</td>
									<td>1355.7</td>
									<td>288.2</td>
									<td>23.1</td>
									<td>17.1</td>
									<td>63.6</td>
									<td>4.3</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2009</td>
									<td>1397.6</td>
									<td>1181.1</td>
									<td>34</td>
									<td>20.8</td>
									<td>6.1</td>
									<td>48.7</td>
									<td>252.4</td>
									<td>12.5</td>
									<td>86.3</td>
									<td>10.3</td>
									<td>8.9</td>
									<td>53.2</td>
									<td>71.4</td>
									<td>1.2</td>
									<td>0</td>
									<td>0</td>
									<td>90.7</td>
									<td>8.6</td>
									<td>19.2</td>
									<td>11.4</td>
									<td>25.2</td>
									<td>0.1</td>
									<td>422.1</td>
									<td>3.7</td>
									<td>0</td>
									<td>0</td>
									<td>9.8</td>
									<td>32.9</td>
									<td>46.4</td>
									<td>15.7</td>
									<td>0</td>
									<td>723.5</td>
									<td>0</td>
									<td>15.6</td>
									<td>82.3</td>
									<td>11.2</td>
									<td>14.1</td>
									<td>1441.3</td>
									<td>273</td>
									<td>15.6</td>
									<td>14.2</td>
									<td>73.7</td>
									<td>2.6</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2010</td>
									<td>1391.1</td>
									<td>1202.7</td>
									<td>30.8</td>
									<td>18.5</td>
									<td>6.8</td>
									<td>47.9</td>
									<td>254.5</td>
									<td>11.9</td>
									<td>109.1</td>
									<td>9.6</td>
									<td>7.1</td>
									<td>45.5</td>
									<td>61.7</td>
									<td>1.3</td>
									<td>2</td>
									<td>0</td>
									<td>114</td>
									<td>7.5</td>
									<td>17.8</td>
									<td>8.7</td>
									<td>22.3</td>
									<td>0</td>
									<td>321.7</td>
									<td>3.5</td>
									<td>0</td>
									<td>0</td>
									<td>8.1</td>
									<td>28.4</td>
									<td>37.2</td>
									<td>18</td>
									<td>0</td>
									<td>522.2</td>
									<td>0</td>
									<td>16.3</td>
									<td>73.1</td>
									<td>12.6</td>
									<td>4.5</td>
									<td>1170.8</td>
									<td>271.9</td>
									<td>13.9</td>
									<td>13.8</td>
									<td>54</td>
									<td>2.7</td>
									<td>0</td>
								</tr>
								<tr>
									<td>2011</td>
									<td>1320.1</td>
									<td>1272.9</td>
									<td>28.2</td>
									<td>18.6</td>
									<td>7.3</td>
									<td>49.2</td>
									<td>234.4</td>
									<td>11.9</td>
									<td>107.3</td>
									<td>10.2</td>
									<td>6.4</td>
									<td>168.1</td>
									<td>102.9</td>
									<td>108.1</td>
									<td>48.5</td>
									<td>0.3</td>
									<td>129.9</td>
									<td>8.1</td>
									<td>17.5</td>
									<td>9</td>
									<td>12</td>
									<td>0</td>
									<td>1128.6</td>
									<td>3.2</td>
									<td>0</td>
									<td>0.2</td>
									<td>9</td>
									<td>26.5</td>
									<td>34.2</td>
									<td>15.5</td>
									<td>0</td>
									<td>1666.1</td>
									<td>0</td>
									<td>16.3</td>
									<td>74.6</td>
									<td>18</td>
									<td>4.7</td>
									<td>3669.2</td>
									<td>262.3</td>
									<td>3.9</td>
									<td>13.1</td>
									<td>180.4</td>
									<td>2.8</td>
									<td>0.4</td>
								</tr>
								<tr>
									<td>2012</td>
									<td>1191.3</td>
									<td>1408.8</td>
									<td>28.2</td>
									<td>21.4</td>
									<td>7.8</td>
									<td>54.6</td>
									<td>236</td>
									<td>12.7</td>
									<td>137.5</td>
									<td>10.6</td>
									<td>4.1</td>
									<td>181.4</td>
									<td>98.9</td>
									<td>265.7</td>
									<td>238.9</td>
									<td>0.5</td>
									<td>173.6</td>
									<td>8.3</td>
									<td>14.2</td>
									<td>4.4</td>
									<td>4.8</td>
									<td>0</td>
									<td>1263.6</td>
									<td>5.2</td>
									<td>0</td>
									<td>0.2</td>
									<td>9.8</td>
									<td>28.4</td>
									<td>29.9</td>
									<td>25.2</td>
									<td>0</td>
									<td>1722.8</td>
									<td>0</td>
									<td>17.7</td>
									<td>48.1</td>
									<td>13.9</td>
									<td>4.7</td>
									<td>3695</td>
									<td>277</td>
									<td>3.8</td>
									<td>14.3</td>
									<td>194.6</td>
									<td>2.2</td>
									<td>0.4</td>
								</tr>
								<tr>
									<td>2013</td>
									<td>1213.9</td>
									<td>1402.1</td>
									<td>28.1</td>
									<td>20.4</td>
									<td>8.2</td>
									<td>50.6</td>
									<td>238.6</td>
									<td>12.9</td>
									<td>157.9</td>
									<td>11.1</td>
									<td>3.1</td>
									<td>297.7</td>
									<td>103.8</td>
									<td>772.5</td>
									<td>478.4</td>
									<td>0.6</td>
									<td>203</td>
									<td>7.8</td>
									<td>15.3</td>
									<td>5.1</td>
									<td>5.7</td>
									<td>0</td>
									<td>1837.7</td>
									<td>16.9</td>
									<td>0</td>
									<td>0.2</td>
									<td>11.2</td>
									<td>30.2</td>
									<td>27.8</td>
									<td>26.7</td>
									<td>0.1</td>
									<td>2713.1</td>
									<td>0</td>
									<td>23.9</td>
									<td>48.7</td>
									<td>15.7</td>
									<td>4.4</td>
									<td>5896.4</td>
									<td>289.6</td>
									<td>5.9</td>
									<td>10.4</td>
									<td>305.5</td>
									<td>2.3</td>
									<td>0.4</td>
								</tr>
								<tr>
									<td>2014</td>
									<td>1213.4</td>
									<td>1435</td>
									<td>28.2</td>
									<td>20</td>
									<td>8.7</td>
									<td>50</td>
									<td>242.7</td>
									<td>13.6</td>
									<td>117.9</td>
									<td>10.1</td>
									<td>2.2</td>
									<td>302.6</td>
									<td>113.2</td>
									<td>1441.6</td>
									<td>734.2</td>
									<td>0.8</td>
									<td>190.8</td>
									<td>6.5</td>
									<td>17.6</td>
									<td>5.5</td>
									<td>20.4</td>
									<td>0</td>
									<td>1736.4</td>
									<td>30.5</td>
									<td>0.4</td>
									<td>0.2</td>
									<td>12.8</td>
									<td>39.3</td>
									<td>29.4</td>
									<td>29.6</td>
									<td>0</td>
									<td>2689.6</td>
									<td>1</td>
									<td>24.9</td>
									<td>37.9</td>
									<td>6.6</td>
									<td>4.1</td>
									<td>5694</td>
									<td>327.8</td>
									<td>6.5</td>
									<td>10.2</td>
									<td>304.9</td>
									<td>2.7</td>
									<td>0.5</td>
								</tr>
								<tr>
									<td>2015</td>
									<td>1219.1</td>
									<td>1494.9</td>
									<td>27.8</td>
									<td>19.6</td>
									<td>10.6</td>
									<td>50.8</td>
									<td>243.4</td>
									<td>13.8</td>
									<td>106.4</td>
									<td>10.4</td>
									<td>1.6</td>
									<td>379.3</td>
									<td>124.3</td>
									<td>2238.3</td>
									<td>949.8</td>
									<td>0.8</td>
									<td>206.7</td>
									<td>4.3</td>
									<td>19.3</td>
									<td>5.2</td>
									<td>8.5</td>
									<td>0</td>
									<td>1820.9</td>
									<td>33.3</td>
									<td>8.1</td>
									<td>0.4</td>
									<td>12.7</td>
									<td>42.3</td>
									<td>21.5</td>
									<td>23.3</td>
									<td>0.2</td>
									<td>2795.5</td>
									<td>1.2</td>
									<td>21.9</td>
									<td>33.3</td>
									<td>5.8</td>
									<td>4</td>
									<td>5881.2</td>
									<td>319.6</td>
									<td>5.6</td>
									<td>8.1</td>
									<td>321.1</td>
									<td>3</td>
									<td>0.5</td>
								</tr>
								<tr>
									<td>2016</td>
									<td>1225.3</td>
									<td>1556.4</td>
									<td>28.4</td>
									<td>20.5</td>
									<td>9.7</td>
									<td>51.9</td>
									<td>247</td>
									<td>13.9</td>
									<td>117.4</td>
									<td>11.8</td>
									<td>1.3</td>
									<td>481.4</td>
									<td>83.8</td>
									<td>2984.5</td>
									<td>1304</td>
									<td>7</td>
									<td>258.7</td>
									<td>3.6</td>
									<td>24.4</td>
									<td>5.1</td>
									<td>6.3</td>
									<td>0</td>
									<td>2581.6</td>
									<td>268.6</td>
									<td>45.4</td>
									<td>0.6</td>
									<td>15.2</td>
									<td>40.7</td>
									<td>18.6</td>
									<td>28.7</td>
									<td>0.2</td>
									<td>3968.9</td>
									<td>4.3</td>
									<td>31.8</td>
									<td>31</td>
									<td>5.9</td>
									<td>3.4</td>
									<td>8245.6</td>
									<td>339.3</td>
									<td>9.3</td>
									<td>7.4</td>
									<td>450</td>
									<td>8.1</td>
									<td>0.6</td>
								</tr>
								<tr>
									<td>2017</td>
									<td>1200.1</td>
									<td>1606.5</td>
									<td>28.9</td>
									<td>20.2</td>
									<td>9.2</td>
									<td>53.8</td>
									<td>256.7</td>
									<td>14.6</td>
									<td>81</td>
									<td>10.9</td>
									<td>1.4</td>
									<td>423</td>
									<td>89.9</td>
									<td>3878.5</td>
									<td>1722</td>
									<td>27.4</td>
									<td>384.3</td>
									<td>5</td>
									<td>22.3</td>
									<td>5.2</td>
									<td>7.6</td>
									<td>0.1</td>
									<td>2464.2</td>
									<td>527.4</td>
									<td>103.5</td>
									<td>5</td>
									<td>15.4</td>
									<td>41.6</td>
									<td>16.4</td>
									<td>26.4</td>
									<td>0.5</td>
									<td>3768.8</td>
									<td>10.4</td>
									<td>32</td>
									<td>26.8</td>
									<td>5.7</td>
									<td>3.2</td>
									<td>7923.5</td>
									<td>367.2</td>
									<td>7.1</td>
									<td>5.5</td>
									<td>441.5</td>
									<td>9.9</td>
									<td>0.7</td>
								</tr>
								<tr>
									<td>2018</td>
									<td>1210.9</td>
									<td>1613.5</td>
									<td>29</td>
									<td>20.4</td>
									<td>8.7</td>
									<td>55.6</td>
									<td>262.3</td>
									<td>14.9</td>
									<td>79.2</td>
									<td>9.3</td>
									<td>1.3</td>
									<td>372.1</td>
									<td>86.5</td>
									<td>6208.5</td>
									<td>2290.2</td>
									<td>39.3</td>
									<td>411.4</td>
									<td>4.4</td>
									<td>26.8</td>
									<td>5.1</td>
									<td>8.5</td>
									<td>0.1</td>
									<td>2377</td>
									<td>845.4</td>
									<td>212</td>
									<td>5.6</td>
									<td>16.2</td>
									<td>44.4</td>
									<td>14.8</td>
									<td>25.1</td>
									<td>0.6</td>
									<td>3594.3</td>
									<td>8.8</td>
									<td>33.1</td>
									<td>22.6</td>
									<td>5.6</td>
									<td>3</td>
									<td>7560.2</td>
									<td>392.5</td>
									<td>5.6</td>
									<td>3.5</td>
									<td>420.5</td>
									<td>47.3</td>
									<td>1.1</td>
								</tr>
								<tr>
									<td>2019</td>
									<td>1216.7</td>
									<td>1616.4</td>
									<td>29.3</td>
									<td>20.5</td>
									<td>8.5</td>
									<td>58.5</td>
									<td>268.5</td>
									<td>15.2</td>
									<td>76</td>
									<td>8</td>
									<td>1.3</td>
									<td>345.8</td>
									<td>83.5</td>
									<td>8846</td>
									<td>2633.1</td>
									<td>55.8</td>
									<td>438.2</td>
									<td>3.7</td>
									<td>25.1</td>
									<td>5.2</td>
									<td>9.6</td>
									<td>0.1</td>
									<td>2368</td>
									<td>1171.5</td>
									<td>311.3</td>
									<td>7</td>
									<td>17.1</td>
									<td>47.2</td>
									<td>13.3</td>
									<td>23.6</td>
									<td>0.7</td>
									<td>3478</td>
									<td>7.4</td>
									<td>34</td>
									<td>17.9</td>
									<td>5.4</td>
									<td>2.5</td>
									<td>7320.9</td>
									<td>421.1</td>
									<td>4.1</td>
									<td>1.8</td>
									<td>406.7</td>
									<td>64.4</td>
									<td>1.4</td>
								</tr>
								<tr>
									<td>2020</td>
									<td>1082.9</td>
									<td>1432.5</td>
									<td>26.1</td>
									<td>18.2</td>
									<td>7.5</td>
									<td>55.1</td>
									<td>240.5</td>
									<td>13</td>
									<td>72.4</td>
									<td>6.6</td>
									<td>1.3</td>
									<td>313.9</td>
									<td>76.9</td>
									<td>9056.3</td>
									<td>2434.9</td>
									<td>51.5</td>
									<td>462.1</td>
									<td>3.1</td>
									<td>23.2</td>
									<td>5.1</td>
									<td>10.6</td>
									<td>0.1</td>
									<td>2282.7</td>
									<td>1791.2</td>
									<td>399.6</td>
									<td>7.3</td>
									<td>15.4</td>
									<td>43.1</td>
									<td>9.9</td>
									<td>18.8</td>
									<td>0.7</td>
									<td>3199.7</td>
									<td>3.7</td>
									<td>29.7</td>
									<td>10.9</td>
									<td>4.4</td>
									<td>1.7</td>
									<td>6674.7</td>
									<td>385.6</td>
									<td>2.1</td>
									<td>0.8</td>
									<td>371.6</td>
									<td>69.7</td>
									<td>1.6</td>
								</tr>
								<tr>
									<td>2021</td>
									<td>1168.6</td>
									<td>1541.8</td>
									<td>28.3</td>
									<td>19.7</td>
									<td>8.2</td>
									<td>63.1</td>
									<td>261.8</td>
									<td>14.2</td>
									<td>67.9</td>
									<td>5.4</td>
									<td>1.2</td>
									<td>309.6</td>
									<td>68.7</td>
									<td>12134.2</td>
									<td>2847.6</td>
									<td>77.9</td>
									<td>480.7</td>
									<td>2.7</td>
									<td>21.1</td>
									<td>4.9</td>
									<td>11.3</td>
									<td>0.1</td>
									<td>2359.8</td>
									<td>4083.3</td>
									<td>1070</td>
									<td>26.1</td>
									<td>17.7</td>
									<td>49.7</td>
									<td>9</td>
									<td>18.6</td>
									<td>0.9</td>
									<td>3169.4</td>
									<td>1.9</td>
									<td>32.5</td>
									<td>6.3</td>
									<td>4.3</td>
									<td>1.1</td>
									<td>6517.8</td>
									<td>443.2</td>
									<td>0.8</td>
									<td>0.3</td>
									<td>364.6</td>
									<td>95.8</td>
									<td>2.4</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>

	</div> <!-- //container -->

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript">
//<![CDATA[
$(document).ready(function(){
	
	$('#dataTable1').DataTable({
        language: {
            lengthMenu: "_MENU_ per page",
            info: " _START_ to _END_ of _TOTAL_ "
        }
    });
	$('#dataTable2').DataTable({
        language: {
            lengthMenu: "_MENU_ per page",
            info: " _START_ to _END_ of _TOTAL_ "
        },
        columnDefs: [
            {
                targets: '_all', // Target the salary column
                render: function(data, type, row) {
                    if (type === 'display' && !isNaN(data) && data !== null) {
                        const floatValue = parseFloat(data);
                        return floatValue % 1 === 0 ? floatValue.toFixed(0) : floatValue.toFixed(3); // Format decimals
                    }
                    return data; // Return unformatted for other data types
                }
            }
        ]
    });
	$('#dataTable3').DataTable({
        language: {
            lengthMenu: "_MENU_ per page",
            info: " _START_ to _END_ of _TOTAL_ "
        },
        columnDefs: [
            {
                targets: '_all', // Target the salary column
                render: function(data, type, row) {
                    if (type === 'display' && !isNaN(data) && data !== null) {
                        const floatValue = parseFloat(data);
                        return floatValue % 1 === 0 ? floatValue.toFixed(0) : floatValue.toFixed(3); // Format decimals
                    }
                    return data; // Return unformatted for other data types
                }
            }
        ]
    });  
		
	$('#dataTable4').DataTable({
        language: {
            lengthMenu: "_MENU_ per page",
            info: " _START_ to _END_ of _TOTAL_ "
        },
        columnDefs: [
            {
                targets: '_all', // Target the salary column
                render: function(data, type, row) {
                    if (type === 'display' && !isNaN(data) && data !== null) {
                        const floatValue = parseFloat(data);
                        return floatValue % 1 === 0 ? floatValue.toFixed(0) : floatValue.toFixed(3); // Format decimals
                    }
                    return data; // Return unformatted for other data types
                }
            }
        ]
    });  

	$('#dataTable5').DataTable({
        language: {
            lengthMenu: "_MENU_ per page",
            info: " _START_ to _END_ of _TOTAL_ "
        },
        columnDefs: [
            {
                targets: '_all', // Target the salary column
                render: function(data, type, row) {
                    if (type === 'display' && !isNaN(data) && data !== null) {
                        const floatValue = parseFloat(data);
                        return floatValue % 1 === 0 ? floatValue.toFixed(0) : floatValue.toFixed(3); // Format decimals
                    }
                    return data; // Return unformatted for other data types
                }
            }
        ]
    });
	
	$('#dataTable6').DataTable({
		
        language: {
            lengthMenu: "_MENU_ per page",
            info: " _START_ to _END_ of _TOTAL_ "
        },
        columnDefs: [
            {
                targets: '_all', // Target the salary column
                render: function(data, type, row) {
                    if (type === 'display' && !isNaN(data) && data !== null) {
                        const floatValue = parseFloat(data);
                        return floatValue % 1 === 0 ? floatValue.toFixed(0) : floatValue.toFixed(3); // Format decimals
                    }
                    return data; // Return unformatted for other data types
                }
            }
        ]
    });
	
$('#dataTable7').DataTable({
		
        language: {
            lengthMenu: "_MENU_ per page",
            info: " _START_ to _END_ of _TOTAL_ "
        },
        columnDefs: [
            {
                targets: '_all', // Target the salary column
                render: function(data, type, row) {
                    if (type === 'display' && !isNaN(data) && data !== null) {
                        const floatValue = parseFloat(data);
                        return floatValue % 1 === 0 ? floatValue.toFixed(0) : floatValue.toFixed(3); // Format decimals
                    }
                    return data; // Return unformatted for other data types
                }
            }
        ]
    });
//select
	$(".select_box dt").click(function(){
		$(this).next().stop(false,true).slideToggle("fast").parent().stop(false,true).toggleClass("on").siblings().removeClass("on").children("dd").slideUp("fast");
	});
	$(".select_box dd a").click(function(){
		$(".select_box dl").removeClass("on");
		$(".select_box dd").slideUp("fast");
	});
	$(".select_box .select1 a").click(function(){
		var selectName1 = $(this).text();
		$(this).parent().prev().text(selectName1);
	});
	$(".select_box .select2 a").click(function(){
		var selectName2 = $(this).text();
		$(this).parent().parent().prev().text(selectName2);
	});
	//국가 선택시
	$(".select_box .select1 .a").click(function(){
		$(".select_box .select2 .box.a").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_a1").addClass("on").siblings().removeClass("on");
		$(".inner").removeAttr("style");
	});
	$(".select_box .select1 .b").click(function(){
		$(".select_box .select2 .box.b").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_b1").addClass("on").siblings().removeClass("on");
		$(".inner").removeAttr("style");
	});
	$(".select_box .select1 .c").click(function(){
		$(".select_box .select2 .box.c").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_c1").addClass("on").siblings().removeClass("on");
		$(".inner").css({ "max-width": "2500px"});
	});
	$(".select_box .select1 .d").click(function(){
		$(".select_box .select2 .box.d").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_d1").addClass("on").siblings().removeClass("on");
		$(".inner").removeAttr("style");
	});
	$(".select_box .select1 .e").click(function(){
		$(".select_box .select2 .box.e").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_e1").addClass("on").siblings().removeClass("on");
		$(".inner").removeAttr("style");
	});
	$(".select_box .select1 .f").click(function(){
		$(".select_box .select2 .box.f").addClass("on").siblings().removeClass("on");
		$(".chart_wrap .chart_f1").addClass("on").siblings().removeClass("on");
		$(".inner").removeAttr("style");
	});
	//모형결과,배출량 선택시
	$(".select_box .select2 .box.a .t1").click(function(){
		$(".chart_wrap .chart_a1").addClass("on").siblings().removeClass("on");
		$(".inner").removeAttr("style");
	});
	$(".select_box .select2 .box.a .t2").click(function(){
		$(".chart_wrap .chart_a2").addClass("on").siblings().removeClass("on");
		$(".inner").css({ "max-width": "2500px"});
	});
	$(".select_box .select2 .box.b .t1").click(function(){
		$(".chart_wrap .chart_b1").addClass("on").siblings().removeClass("on");
		$(".inner").removeAttr("style");
	});
	$(".select_box .select2 .box.b .t2").click(function(){
		$(".chart_wrap .chart_b2").addClass("on").siblings().removeClass("on");
		$(".inner").css({ "max-width": "2500px"});
	});
	$(".select_box .select2 .box.c .t1").click(function(){
		$(".chart_wrap .chart_c1").addClass("on").siblings().removeClass("on");
		$(".inner").removeAttr("style");
	});
	$(".select_box .select2 .box.c .t2").click(function(){
		$(".chart_wrap .chart_c2").addClass("on").siblings().removeClass("on");
		$(".inner").css({ "max-width": "2500px"});
	});
	$(".select_box .select2 .box.d .t1").click(function(){
		$(".chart_wrap .chart_d1").addClass("on").siblings().removeClass("on");
		$(".inner").removeAttr("style");
	});
	$(".select_box .select2 .box.d .t2").click(function(){
		$(".chart_wrap .chart_d2").addClass("on").siblings().removeClass("on");
		$(".inner").css({ "max-width": "2500px"});  
	});
	$(".select_box .select2 .box.e .t1").click(function(){
		$(".chart_wrap .chart_e1").addClass("on").siblings().removeClass("on");
		$(".inner").removeAttr("style");
	});
	$(".select_box .select2 .box.e .t2").click(function(){
		$(".chart_wrap .chart_e2").addClass("on").siblings().removeClass("on");
		$(".inner").css({ "max-width": "2500px"});
	});
	$(".select_box .select2 .box.f .t1").click(function(){
		$(".chart_wrap .chart_f1").addClass("on").siblings().removeClass("on");
		$(".inner").removeAttr("style");
	});
	$(".select_box .select2 .box.f .t2").click(function(){
		$(".chart_wrap .chart_f2").addClass("on").siblings().removeClass("on");
		$(".inner").css({ "max-width": "2500px"});
	});
//한국 - 모형 결과
	
	const ctx_a1 = document.getElementById('chart_a1');
	const Alabels = [1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019];
	const Adataset1=['5102.2','5291.33333333333','5480.46666666667','5669.6','5857.53333333333','6045.46666666667','6233.4','6400.33333333333','6567.26666666667','6734.2','6875.73333333333','7017.26666666667','7158.8','7392.76666666667','7626.73333333333','7860.7','8070.05','8279.4','8454.1','8628.8','8989.1','9206.2','9526.7','9686.2','9761.05','9835.9','10101.4','10365.9','10629.4','10896.4','11188.9','11466.6','11803.5','12023.1','12269.3','12474','12714.2','13000','13297.3','13549.4','13815.1','14078.6','14330.4','14504.1'];
	const Adataset2=['31.4','33.5333333333333','35.6666666666667','37.8','40.6','43.4','46.2','57.5','68.8','80.1','84.4666666666667','88.8333333333333','93.2','76.2333333333333','59.2666666666667','42.3','44.45','46.6','49.4','52.2','58.8','61.1','64.1','65.9','66.75','67.6','70.2','70.1','71.3','72.6','75.4','77.6','80.6','84.4','86.4','87.9','90.6','93','94.1','95.1','96.6','96.9','98.6','99.4'];
	const Adataset3=['758.2','798.533333333333','838.866666666667','879.2','920.466666666667','961.733333333333','1003','1048.83333333333','1094.66666666667','1140.5','1154.83333333333','1169.16666666667','1183.5','1282.06666666667','1380.63333333333','1479.2','1466.5','1453.8','1490.5','1527.2','1601.6','1632.2','1686.4','1721.2','1745.4','1769.6','1820','1879.8','1952.5','2030.3','2114.3','2190.1','2288.2','2371.1','2460.6','2530.6','2617.8','2717.7','2824.1','2907','2985.6','3079.6','3187.1','3313.4'];
	const Adataset4=['372.2','388.1','404','419.9','439.6','459.3','479','500.566666666667','522.133333333333','543.7','554.566666666667','565.433333333333','576.3','495.266666666667','414.233333333333','333.2','334.85','336.5','336.95','337.4','341','342.4','347.2','346.8','342.6','338.4','341.5','348.7','357.6','368.5','383.5','394.5','410.9','421.7','431.3','437.8','446.4','457.1','465.1','472.3','480.2','491.5','505','520.7'];
	const Adataset5=['39','40.5666666666667','42.1333333333333','43.7','44.8666666666667','46.0333333333333','47.2','48.2','49.2','50.2','49.7666666666667','49.3333333333333','48.9','49.8333333333333','50.7666666666667','51.7','52.1','52.5','55.4','58.3','58.4','59.3','62.3','63.3','62.95','62.6','63.9','64.3','66.3','69.7','71.7','74.5','79.1','81.2','82.4','86','88','90.9','93.9','95','96.2','98.1','100.7','103'];


	new Chart(ctx_a1, {
		type: 'line',
		data: {
			labels: Alabels,
			datasets: [{
				label: 'Passenger cars',
				data: Adataset1,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
            },{
				label: 'Buses',
				data: Adataset2,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			},{
				label: 'Light commercial',
				data: Adataset3,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			},{
				label: 'Rigid and other trucks',
				data: Adataset4,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			}
			,{
				label: 'Articulated trucks',
				data: Adataset5,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			}
			]
		},
		options: {
			responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                },
                title: {
                    display: true,
                    text: '호주 기술별 연도별 차량 등록대수'
                }
            },
			scales: {
				y: {
					beginAtZero: true,
					title: {
                        display: true,
                        text: 'millions'
                    },
					stacked: true,
                    ticks: {
                        callback: function(value) {
                            return value/1000;
                        }
                    }
				}
			}
		}
	});
	
	const ctx_b1 = document.getElementById('chart_b1');
	
	const b1label   =['2001','2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022'];
	const b1dataset1=['2153776','2227660','2319786','2411733','2497252','2551624','2599869','2614765','2591418','2611627','2627905','2631665','2682829','2768776','2866034','2963647','3082664','3160876','3213052','3216109','3258606','3281278'];
	const b1dataset2=['158503','173887','194371','210958','226891','234380','239396','240779','238716','238443','239677','242786','249842','256790','264433','275179','287669','297428','304650','306840','313171','318299'];
	const b1dataset3=['197257','194150','190762','188040','185138','181045','177102','172956','166670','162603','159530','155842','154808','155795','156732','159095','161771','162384','162454','161166','159341','158289'];
	const b1dataset4=['164226','176644','191067','207773','225088','240379','256449','268741','273311','280869','290003','300808','319869','344459','372391','405123','445864','487039','523481','547698','582952','611313'];
	const b1dataset5=['61','60','61','62','63','63','64','65','73','80','95','122','149','260','524','1604','4491','8833','14163','18109','27621','47407'];
	const b1dataset6=['5655','5416','5155','4936','4759','4487','4265','4070','3885','3711','3531','3376','3235','3155','3094','3024','2926','2850','2773','2700','2642','2636'];
	const b1dataset7=['93775','98486','104704','112368','119267','124636','129745','133617','132986','132179','131493','130867','132184','135135','138765','141954','146790','151506','155941','158519','163190','168331'];
	const b1dataset8=['237','229','218','208','207','210','199','196','188','183','173','163','154','150','147','146','143','140','134','127','124','126'];
	const b1dataset9=['4245','4681','5093','5555','5906','6177','6695','7264','7615','7788','7990','8145','8353','8529','8760','9326','9879','10636','10914','10991','11132','11284'];
	const b1dataset10=['64','63','67','67','69','69','70','99','98','77','77','77','74','74','74','72','73','93','105','122','174','250'];

	
	new Chart(ctx_b1, {
		type: 'line',
		data: {
			labels: b1label,
			datasets: [{
				label: 'Light passenger petrol vehicles',
				data: b1dataset1,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			},{
				label: 'Light passenger diesel vehicles',
				data: b1dataset2,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			},{
				label: 'Light commercial petrol vehicles',
				data: b1dataset3,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			},{
				label: 'Light commercial diesel vehicles',
				data: b1dataset4,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			},{
				label: 'Light pure electric vehicles',
				data: b1dataset5,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			},{
				label: 'Petrol trucks',
				data: b1dataset6,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			},{
				label: 'Diesel trucks',
				data:  b1dataset7,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			},{
				label: 'Petrol Buses',
				data: b1dataset8,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			},{
				label: 'Diesel buses',
				data:  b1dataset9,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			},{
				label: 'Electric buses',
				data: b1dataset10,
				borderWidth: 2,
				fill: true,
                stack: 'stacked'
			}
			]
		},
		options: {
			responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                },
                title: {
                    display: true,
                    text: '뉴질랜드 기술별 연도별 차량 등록대수'
                }
            },
            scales: {
				y: {
					beginAtZero: true,
					title: {
                        display: true,
                        text: '백만'
                    },
					stacked: true,
                    ticks: {
                        callback: function(value) {
                            return value/1000000;
                        }
                    }
				}
			}
		}
	});
	
const ctx_d1 = document.getElementById('chart_d1');
	

const d1label=['1980','1981','1982','1983','1984','1985','1986','1987','1988','1989','1990','1991','1992','1993','1994','1995','1996','1997','1998','1999','2000','2001','2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022'];
const d1dataset1  =[3827800,4202106,4466560,4563343,4798974,5102092,5000708,5117696,5379205,5745925,6260234,6643020,7079438,7411382,6896821,7184474,7508217,8085547,8714205,9213151,9785583,10948116,11845426,12335666,12983209,13845837,15896706,17146395,18879704,19949925,20594041,21778279,22958987,24201203,24903895,26264735,27996462,30269389,31510851,32812049,33629084,34711873,35756325];
const d1dataset2  =[9589,10527,10978,10352,10593,10290,10225,10289,10491,11059,12303,12200,13285,16190,38509,41420,15139,39157,73914,86835,88443,121089,133873,146913,147181,142717,143757,153025,164126,164927,168279,175802,181416,188460,194049,202005,214584,243131,242622,255974,262165,269013,280420];
const d1dataset3  =[1408141,1569534,1684947,1819000,1930945,2032726,2121064,2197830,2328725,2579862,2835772,3157866,3346713,3477667,3500599,3497989,3549102,3777372,3957052,4212204,4800995,5265957,5731810,6196153,6552248,6807628,7283094,7661291,8251597,8619899,8776473,9015109,9138926,9450389,9628332,9843118,10147710,10664953,10727634,10776743,10811042,11045663,11180850];
const d1dataset4  =[275923,295305,255963,249216,246746,248918,231240,219647,216530,222322,246651,259133,271126,196308,211993,127353,175610,176758,219597,259204,288804,274919,364899,433348,511301,580802,704979,860401,1055585,1171756,1125797,1284724,1557118,1850925,2245899,2610379,3009199,3569330,4048352,4755395,5248036,5898377,6766983];
const d1dataset5  =[15353,16782,11912,14997,18732,21905,23528,23786,23482,27368,32094,34600,35477,24456,22972,20128,18079,19898,32253,25094,31081,30453,34489,30917,30364,31087,43558,44577,52184,54516,55617,56220,56668,55533,55996,55398,59757,57556,59443,62498,63980,64601,62273];
const d1dataset6  =[859,857,845,1251,1605,1651,1788,1820,1867,2386,2854,3117,3049,1166,1183,668,934,2141,2233,2187,3293,2323,2349,2150,1740,1479,1580,1525,1647,1711,1809,1843,1749,1817,1738,1946,2091,3034,3109,3183,3469,3440,3483];
const d1dataset7  =[5431,6400,5373,8359,8922,9397,10058,10288,10580,14681,16397,18025,18922,22380,27803,26982,26191,26444,39919,34196,38299,40840,41348,37773,39605,41193,49205,52546,63502,70175,74030,77467,80734,81192,81249,80364,83436,84828,85757,88615,90548,87792,90890];
const d1dataset8  =[660,762,716,714,774,817,831,819,791,860,1172,1223,1167,631,887,247,587,580,1174,1665,2873,3503,2983,4293,4764,5101,7115,7917,10083,10893,11285,11074,11998,12865,13184,13651,14365,14238,14450,15890,16638,17223,17700];
const d1dataset9  =[106889,122475,138425,147896,152820,157845,178686,194746,195048,230239,263222,273088,284263,280113,297939,264902,304568,297550,339751,344551,359515,373413,374995,375466,374438,423456,471549,505651,489054,514783,503115,539827,553968,563186,584017,587861,608076,631097,719773,729044,732631,678552,678281];
const d1dataset10 =[49940,53589,57410,59723,64319,67087,71360,72255,72871,76705,78118,81593,78845,68585,74885,78409,80860,84147,100296,111335,110660,150124,163143,159038,115664,124621,164852,167528,167514,170827,142650,149920,155355,156867,151933,153501,151097,154955,197848,194449,195455,180313,184683];
const d1dataset11 =[57244,60965,61479,65847,70008,72272,81903,83960,84720,97008,112567,117523,126781,92930,85406,73714,70379,74765,81097,93712,100123,87409,87639,83367,115682,131917,130619,135654,138502,145120,164853,167880,165806,172550,154399,149806,153475,146036,156737,157511,143094,125418,123741];
const d1dataset12 =[501,534,556,554,628,623,621,593,577,633,724,755,1118,1270,2092,1360,362,828,1329,1730,2247,2384,1640,1876,2242,2640,10215,10687,14405,15604,17063,17324,13112,9851,12480,13234,14013,14975,17350,18337,19536,20573,21792];

	new Chart(ctx_d1, {
		type: 'line',
		data: {
			labels: d1label,
					datasets: [{label: 'passenger Automóviles',data: d1dataset1,borderWidth: 2,fill: true,stack: 'stacked'}
					,{label: 'passenger Camiones para pasajeros',data: d1dataset2,borderWidth: 2,fill: true,stack: 'stacked'}
					,{label: 'passenger Camiones y camionetas para carga',data: d1dataset3,borderWidth: 2,fill: true,stack: 'stacked'}
					,{label: 'passenger Motocicletas',data: d1dataset4,borderWidth: 2,fill: true,stack: 'stacked'}
					,{label: 'officials Automóviles',data: d1dataset5,borderWidth: 2,fill: true,stack: 'stacked'}
					,{label: 'officials Camiones para pasajeros',data: d1dataset6,borderWidth: 2,fill: true,stack: 'stacked'}
					,{label: 'officials Camiones y camionetas para carga',data: d1dataset7,borderWidth: 2,fill: true,stack: 'stacked'}
					,{label: 'officials Motocicletas',data: d1dataset8,borderWidth: 2,fill: true,stack: 'stacked'}
					,{label: 'publics Automóviles',data: d1dataset9,borderWidth: 2,fill: true,stack: 'stacked'}
					,{label: 'publics Camiones para pasajeros',data: d1dataset10,borderWidth: 2,fill: true,stack: 'stacked'}
					,{label: 'publics Camiones y camionetas para carga',data: d1dataset11,borderWidth: 2,fill: true,stack: 'stacked'}
					,{label: 'publics Motocicletas',data: d1dataset12,borderWidth: 2,fill: true,stack: 'stacked'}
					]
		},
		options: {
			responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                },
                title: {
                    display: true,
                    text: '멕시코 기술별 연도별 차량 등록대수'
                }
            },
            scales: {
				y: {
					beginAtZero: true,
					title: {
                        display: true,
                        text: '백만'
                    },
					stacked: true,
                    ticks: {
                        callback: function(value) {
                            return value/1000000;
                        }
                    }
				}
			}
		}
	});
	
	const ctx_e1 = document.getElementById('chart_e1');
	

	const e1label=['1990','1991','1992','1993','1994','1995','1996','1997','1998','1999','2000','2001','2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022'];
	const e1dataset1 = [160072926, 164261942, 172419993, 177674563, 181715618, 185854170, 190735454, 195706200, 200918492, 206442544, 212687809, 218075388, 222073435, 225279841, 229100799, 233895497, 237852033, 237066556, 241700764, 243581864, 246396332, 253060421, 255126327, 258052629, 261284383, 263256521, 269730804, 273694705, 279648538, 284289549, 287373879, 290222169, 292924163];
	const e1dataset2 = [821293, 841198, 861516, 872129, 902954, 912219, 929224, 934077, 938718, 952515, 968029, 971404, 970273, 972864, 964341, 924557, 912777, 914433, 926937, 918781, 910569, 909480, 904528, 903785, 905089, 893008, 898705, 903113, 908478, 914294, 884063, 886660, 893294];
	const e1dataset3 = [1084154, 1156247, 1028256, 866174, 908889, 957036, 1007765, 1043692, 1144737, 1233959, 1337131, 1421966, 1493464, 1563903, 1633164, 1679944, 1660347, 1632336, 1542743, 1506076, 1515855, 1563228, 1592492, 1651481, 1710247, 1772035, 1875492, 1976621, 2076796, 2149988, 2178272, 2259973, 2341081];
	const e1dataset4 = [18552907, 19288953, 19529231, 20099826, 20632726, 21322063, 22755677, 23157237, 25429860, 26401037, 27595171, 28679258, 29665674, 30264235, 31238873, 31370491, 32519576, 32646189, 33095389, 33214294, 33517333, 33966444, 34019578, 33271079, 33639205, 34224476, 34065751, 35964870, 35603547, 36409527, 36951754, 37775921, 38299767];
	const e1dataset5 = [917864, 956961, 1061492, 1299117, 1338625, 1414376, 1513220, 1577420, 1758421, 1847409, 1712177, 1803986, 1872025, 1977716, 1972421, 1986701, 2023496, 2066958, 2067971, 2032778, 2016413, 2030880, 2025862, 2039813, 2072644, 2124920, 2193348, 2256754, 2364743, 2398307, 2430947, 2528409, 2618013];
	const e1dataset6 = [4525872, 4707813, 5972978, 7250171, 7566728, 7911495, 8211329, 8115901, 8435042, 8709721, 9156950, 9466537, 9198689, 9894210, 10115593, 10313332, 10641771, 10893062, 11502548, 11759713, 12294349, 13752798, 14399762, 14888739, 15324185, 15780248, 16233589, 16686530, 17046848, 17378551, 17821253, 18332518, 18968495];
	      
		new Chart(ctx_e1, {
			type: 'line',
			data: {
				labels: e1label,
			      datasets: [{label: 'LDV',data: e1dataset1 ,borderWidth: 2,fill: true,stack: 'stacked'}
			      ,{label: 'Bus',data: e1dataset2 ,borderWidth: 2,fill: true,stack: 'stacked'}
			      ,{label: 'Road tractor',data: e1dataset3 ,borderWidth: 2,fill: true,stack: 'stacked'}
			      ,{label: 'Lorries',data: e1dataset4 ,borderWidth: 2,fill: true,stack: 'stacked'}
			      ,{label: 'semi-trailer',data: e1dataset5 ,borderWidth: 2,fill: true,stack: 'stacked'}
			      ,{label: 'trailer',data: e1dataset6 ,borderWidth: 2,fill: true,stack: 'stacked'}
						]
			},
			options: {
				responsive: true,
	            plugins: {
	                legend: {
	                    position: 'top'
	                },
	                title: {
	                    display: true,
	                    text: 'EU 기술별 연도별 차량 등록대수'
	                }
	            },
	            scales: {
					y: {
						beginAtZero: true,
						title: {
	                        display: true,
	                        text: '백만'
	                    },
						stacked: true,
	                    ticks: {
	                        callback: function(value) {
	                            return value/1000000;
	                        }
	                    }
					}
				}
			}
		});
	
		
		const ctx_f1 = document.getElementById('chart_f1');
		

		const f1label=['1990','1991','1992','1993','1994','1995','1996','1997','1998','1999','2000','2001','2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022'];
		const f1dataset1 = [132164330, 126764419, 125087687, 125843591, 126396989, 126899713, 128439052, 128449720, 130499959, 131076551, 132247286, 136340945, 134604524, 134336851, 135077031, 135192288, 134012369, 134510252, 135637845, 133437705, 129433852, 124136450, 109834271.5, 112128355, 112261143.4, 111411663, 111490611, 109749701, 109813571, 107180635.1, 103796315, 101577594.7, 98573934.86];
		const f1dataset2 = [1536167, 1535182, 1493461, 1483598, 1486480, 1487062, 1289289, 1298984, 1338579, 1355493, 1374134, 1292522, 1316153, 1333046, 1353620, 1375795, 1387576, 1422678, 1441998, 1441895, 1458388, 1520078, 1455634.95, 1547990, 1637701.312, 1452565, 1470655, 1427328, 1428561, 1367074.897, 1338985, 1374529, 1372935];
		const f1dataset3 = [275493, 274562, 275245, 276093, 282507, 287873, 290882, 294221, 302216, 307090, 314504, 317593, 320207, 324694, 329768, 331499, 338798, 344767, 349841, 351217, 346839, 311790, 300563, 361427, 466834.0091, 465641, 567573, 572215, 575613.8302, 575193, 572793, 519121, 522280];
		const f1dataset4 = [351494, 356717, 369487, 378339, 387916, 397630, 405727, 403327, 413324, 421687, 431621, 431955, 440510, 451856, 465506, 475554, 483161, 489669, 493467, 490776, 499212, 354274, 463946, 503122, 405193.3092, 423266, 408588, 411016.8172, 416538.3072, 419839.957, 437511, 420002, 431839];
		const f1dataset5 = [53101089, 57790544, 61597358, 64523185, 67852252, 70753616, 73983774, 75335221, 77038767, 81090659, 85004999, 89987541, 90847465, 92814454, 97859492, 101615863, 105708297, 108239337, 107964897, 108269422, 108003029, 116619648, 131321968, 130997583, 135121071.2, 139089800, 143913338, 149301365, 150398354, 156080085.9, 159147338, 166043413.9, 170239356.6];
		const f1dataset6 = [1369341, 1415045, 1538990, 1558676, 1639221, 1704127, 1956432, 1972187, 2023708, 2057143, 2102629, 2057770, 2091120, 2129097, 2157199, 2202975, 2235485, 2257902, 2276690, 2291871, 2319225, 1835939, 1808063.647, 1933658, 2041277.607, 2166348, 2268938, 2304070, 2303276.86, 2272031.258, 2295990, 2484426, 2692977];
		const f1dataset7 = [, , , , , 3727738, 3831570.14, 3786303, 3838702, 4110740, 4303762, 4862158, 4962764, 5328300, 5738072, 6183596, 6634506, 7093162.785, 7706464.692, 7883446, 7962781, 8410255, 8429988, 8375310, 8385326.501, 8571236, 8649613, 8634897, 8630345, 8566564, 8317624, 9764535, 9534892];
		const f1dataset8 = [, , , , , 39291, 39667, 40070, 40748, 41693, 42306, 40898, 41392, 41735, 42798, 43550, 44452, 45313, 46461, 46278, 46722, 27247, 24951, 29377, 32391, 29700, 29767, 29211, 29396.12672, 29749.88518, 29811, 30956, 32772];
		      
			new Chart(ctx_f1, {
				type: 'line',
				data: {
					labels: f1label,
				      datasets: [{label: '	AUTOMOBILES PRIVATE AND COMMERCIAL	',data: f1dataset1	,borderWidth: 2,fill: true,stack: 'stacked'}	
				      ,{label: '	AUTOMOBILES PUBLICLY OWNED	',data: f1dataset2	,borderWidth: 2,fill: true,stack: 'stacked'}	
				      ,{label: '	BUSES PRIVATE AND COMMERCIAL	',data: f1dataset3	,borderWidth: 2,fill: true,stack: 'stacked'}	
				      ,{label: '	BUSES PUBLICLY OWNED	',data: f1dataset4	,borderWidth: 2,fill: true,stack: 'stacked'}	
				      ,{label: '	TRUCKS PRIVATE AND COMMERCIAL	',data: f1dataset5	,borderWidth: 2,fill: true,stack: 'stacked'}	
				      ,{label: '	TRUCKS PUBLICLY OWNED	',data: f1dataset6	,borderWidth: 2,fill: true,stack: 'stacked'}	
				      ,{label: '	MOTORCYCLES PRIVATE AND COMMERCIAL	',data: f1dataset7	,borderWidth: 2,fill: true,stack: 'stacked'}	
				      ,{label: '	MOTORCYCLES PUBLICLY OWNED	',data: f1dataset8	,borderWidth: 2,fill: true,stack: 'stacked'}	
							]
				},
				options: {
					responsive: true,
		            plugins: {
		                legend: {
		                    position: 'top'
		                },
		                title: {
		                    display: true,
		                    text: '미국 기술별 연도별 차량 등록대수'
		                }
		            },
					scales: {
						y: {
							beginAtZero: true,
							title: {
		                        display: true,
		                        text: '백만'
		                    },
							stacked: true,
		                    ticks: {
		                        callback: function(value) {
		                            return value/1000000;
		                        }
		                    }
						}
					}
				}
	});
	
});


//]]>
</script>
<jsp:include page="../../../inc/UniconIncFooter.jsp" flush="true"/>
</body>
</html>

