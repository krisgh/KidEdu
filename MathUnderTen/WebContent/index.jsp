<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>基础练习</title>

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
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/image-picker.css">

</head>
<body>
	<form class="am-form" action="FormulaAction" method="post">
		<div class="am-form-group">
			<label for="doc-ipt-email-1">输入你的名字</label> <input type="text"
				name="input-name" id="doc-ipt-email-1" placeholder="你的名字">
		</div>
		<!-- 练习模型 -->
		<div class="am-form-group">
			<label class="am-radio-inline"> <input type="radio"
				value="add" name="select-mode" checked> 十以内加法
			</label> <label class="am-radio-inline"> <input type="radio"
				value="sub" name="select-mode"> 十以内减法
			</label>
		</div>
		<!-- 图片选择器 -->
		<c:import var="picsInfo" url="/likePics.xml" charEncoding="utf-8"></c:import>
		<x:parse xml="${picsInfo}" var="output"></x:parse>

		<div class="picker">
			<select class="image-picker show-labels" name="like-pic" style="visibility: hidden">
				<x:forEach select="$output/pictures/picture" var="pic">
					<x:set var="cn" select="$pic/chinesename" />
					<x:set var="pp" select="$pic/path" />
					<x:set var="en" select="$pic/englishname" />
					<option data-img-src="<x:out select='$pp' />" value="<x:out select='$pp' />"><x:out
							select='$cn' /><x:out select='$en' /></option>
				</x:forEach>
			</select>
		</div>

		<p>
			<button type="submit" class="am-btn am-btn-default">开始吧！</button>
		</p>
	</form>

	<script src="assets/js/amazeui.min.js"></script>
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/jquery.masonry.min.js" type="text/javascript"></script>
	<script src="js/image-picker.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(
				function() {

					$("select.image-picker").imagepicker({
						hide_select : false
					});

					$("select.image-picker.show-labels").imagepicker({
						hide_select : false,
						show_label : true
					});

					$("select.image-picker.limit_callback").imagepicker({
						limit_reached : function() {
							alert('We are full!')
						},
						hide_select : false
					});

					//瀑布流布局
					var container = $("select.image-picker.masonry").next(
							"ul.thumbnails");

					container.imagesLoaded(function() {
						container.masonry({
							itemSelector : "li"
						});
					});

				});
	</script>
</body>
</html>