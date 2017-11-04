<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>十进制加法</title>

<!-- Set render engine for 360 browser -->
<meta name="renderer" content="webkit">

<!-- No Baidu Siteapp-->
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="icon" type="image/png" href="assets/i/favicon.png">

<!-- Add to homescreen for Chrome on Android -->
<meta name="mobile-web-app-capable" content="yes">
<link rel="icon" sizes="192x192" href="assets/i/app-icon72x72@2x.png">

<!-- Add to homescreen for Safari on iOS -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">

<!-- Tile icon for Win8 (144x144 + tile color) -->
<meta name="msapplication-TileImage"
	content="assets/i/app-icon72x72@2x.png">
<meta name="msapplication-TileColor" content="#0e90d2">

<link rel="stylesheet" href="assets/css/amazeui.min.css">
<link rel="stylesheet" href="assets/css/app.css">

<link rel="stylesheet" href="css/practice.css">

<script src="js/scripts.js"></script>

</head>
<body>
	<div id="proload-01"></div>
	<div id="proload-02"></div>
	<div id="proload-03"></div>
	<div id="proload-04"></div>
	<div id="proload-05"></div>
	<div id="proload-06"></div>
	<div id="proload-07"></div>
	<div id="proload-08"></div>
	<div id="proload-09"></div>
	<div id="proload-10"></div>
	<div id="proload-00"></div>

	<c:if test="${times>0 }">
		<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default">
			<h2 class="am-titlebar-title ">你好，${name }!</h2>
			<nav class="am-titlebar-nav"> 一共10题，现在是第${11-times}题 </nav>
		</div>

		<!-- 公式区开始 -->
		<div class="am-g">
			<div class="am-u-sm-2">
				<div class="m-card m-card-case-content">
					<img src="imgs/${formula.one }.png" class="am-img-responsive" />
				</div>
			</div>
			<div class="am-u-sm-2">
				<div class="m-card">
					<img src="imgs/${formula.operate }.png" class="am-img-responsive" />
				</div>
			</div>
			<div class="am-u-sm-2">
				<div class="m-card m-card-case-content">
					<img src="imgs/${formula.two }.png" class="am-img-responsive" />
				</div>
			</div>
			<div class="am-u-sm-2">
				<div class="m-card">
					<img src="imgs/equal.png" class="am-img-responsive" />
				</div>
			</div>
			<div class="am-u-sm-2">
				<div id="mj-div-result" class="m-card m-card-case-content"
					value="${formula.result }">
					<img id="mj-result" src="" class="am-img-responsive" />
				</div>
			</div>
			<div class="am-u-sm-2">
				<div class="m-card">
					<img id="div-right" src="" class="am-img-responsive" />
				</div>
			</div>
		</div>
		<!-- 公式区结束 -->
		<div class="am-g">
			<!-- 辅助图片区开始 -->
			<div class="am-u-sm-4">
				<ul class="am-avg-sm-4 boxes">
					<c:if test="${formula.operate=='sub' }">
						<c:set var="firstNum" value="${formula.result }"></c:set>
					</c:if>
					<c:if test="${formula.operate=='plus' }">
						<c:set var="firstNum" value="${formula.one }"></c:set>
					</c:if>
					<c:if test="${firstNum==0}">
						<li class="box m-button"><img src="imgs/blank.png"
							class="am-img-responsive" /></li>
					</c:if>
					<c:forEach begin="1" end="${firstNum }" varStatus="loop">
						<li class="box m-button"><img src="${picture }"
							class="am-img-responsive" /></li>
					</c:forEach>
				</ul>
			</div>
			<div class="am-u-sm-4">
				<ul class="am-avg-sm-4 boxes">
					<c:if test="${formula.operate=='sub' }">
						<c:forEach begin="1" end="${formula.two }" varStatus="loop">
							<li class="box m-button"><img src="${picture }"
								class="am-img-responsive" style="opacity:0.4"/></li>
						</c:forEach>
					</c:if>
					<c:if test="${formula.operate=='plus' }">
						<c:forEach begin="1" end="${formula.two }" varStatus="loop">
							<li class="box m-button"><img src="${picture }"
								class="am-img-responsive" /></li>
						</c:forEach>
					</c:if>
				</ul>
			</div>
			<!-- 按钮区域 -->
			<div class="am-u-sm-4">
				<ul class="am-avg-sm-3 boxes">
					<li class="box m-btn"><button type="button"
							class="am-btn am-btn-primary am-round am-btn-lg"
							onclick="rslt_choose(0);">0</button></li>
					<li class="box m-btn"><button type="button"
							class="am-btn am-btn-primary am-round am-btn-lg"
							onclick="rslt_choose(1)">1</button></li>
					<li class="box m-btn"><button type="button"
							class="am-btn am-btn-primary am-round am-btn-lg"
							onclick="rslt_choose(2)">2</button></li>
					<li class="box m-btn"><button type="button"
							class="am-btn am-btn-primary am-round am-btn-lg"
							onclick="rslt_choose(3)">3</button></li>
					<li class="box m-btn"><button type="button"
							class="am-btn am-btn-primary am-round am-btn-lg"
							onclick="rslt_choose(4)">4</button></li>
					<li class="box m-btn"><button type="button"
							class="am-btn am-btn-primary am-round am-btn-lg"
							onclick="rslt_choose(5)">5</button></li>
					<li class="box m-btn"><button type="button"
							class="am-btn am-btn-primary am-round am-btn-lg"
							onclick="rslt_choose(6)">6</button></li>
					<li class="box m-btn"><button type="button"
							class="am-btn am-btn-primary am-round am-btn-lg"
							onclick="rslt_choose(7)">7</button></li>
					<li class="box m-btn"><button type="button"
							class="am-btn am-btn-primary am-round am-btn-lg"
							onclick="rslt_choose(8)">8</button></li>
					<li class="box m-btn"><button type="button"
							class="am-btn am-btn-primary am-round am-btn-lg"
							onclick="rslt_choose(9)">9</button></li>
					<li class="box m-btn"><button type="button"
							class="am-btn am-btn-primary am-round am-btn-lg"
							onclick="rslt_choose(10)">10</button></li>
				</ul>
			</div>
		</div>
	</c:if>

	<div class="am-modal am-modal-no-btn" tabindex="-1"
		id="doc-modal-answer">
		<div class="am-modal-dialog">
			<div class="am-modal-hd">
				<div class="am-g">
					<div class="am-u-sm-4" style="text-align: right">
						<img src="imgs/right.png" />
					</div>
					<div class="am-u-sm-8" style="text-align: left">
						<h1>厉害，回答正确了！</h1>
					</div>
				</div>
			</div>
			<div class="am-modal-bd">
				<h1>${formula.one }${formula.operation }${formula.two }=${formula.result }</h1>
			</div>
			<ul class="am-nav am-nav-pills am-nav-justify">
				<li><a href="FormulaAction">下一题</a></li>
			</ul>
		</div>
	</div>
	<c:if test="${empty times || times<=0 }">
		<div class="m-finish">
			<div class="am-g">
				<div class="am-u-sm-12"></div>
				<h1>${name },你已经完成所有练习了哦。</h1>
			</div>
			<ul class="am-nav am-nav-pills am-nav-justify">
				<li><a href="index.jsp?name=${name }">再来一次</a></li>
			</ul>
		</div>
	</c:if>
	<script src="js/jquery.min.js"></script>
	<script src="assets/js/amazeui.min.js"></script>
	<!--[if lte IE 8 ]>
		<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
		<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
	<![endif]-->
</body>
</html>