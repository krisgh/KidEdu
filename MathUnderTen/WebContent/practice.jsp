<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/popup.js"></script>
<title>十进制加减法</title>
<link type="text/css" rel="stylesheet" href="css/practice.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<div class="container-fluid">
		<c:if test="${times>0 }">
			<div class="row">
				<div class="col-md-12">
					<div class="page-header">
						<h1>
							你好啊，${name }! <small>一共是10道题，现在是第${11-times}道题.</small> <a
								class="btn btn-default" id="btn-next" href="#">下一题</a>
						</h1>
					</div>
					<div>
						
						<input type="text" id="formularesult" value="${formula.result }" />
					</div>
				</div>
			</div>
			<!-- 显示公式部分 -->
			<div class="row">

				<div class="col-md-2">
					<img src="imgs/${formula.one }.png" class="img-thumbnail">
				</div>
				<div class="col-md-2">
					<img src="imgs/${formula.operate }.png" class="img-rounded">
				</div>
				<div class="col-md-2">
					<img src="imgs/${formula.two }.png" class="img-thumbnail">
				</div>
				<div class="col-md-2">
					<img src="imgs/equal.png" class="img-rounded">
				</div>
				<div class="col-md-2">
					<img src="imgs/${formula.result }.png" class="img-thumbnail"
						id="img-result" style="display: none">
				</div>
				<div class="col-md-2" id="div-right"></div>
			</div>
			<!-- 显示数值辅助图片 -->
			<div class="row">
				<div class="col-md-4">
					<c:forEach begin="1" end="${formula.one }" varStatus="loop">
						<img class="queue" src="imgs/croc.png">
					</c:forEach>
				</div>
				<div class="col-md-4">
					<c:forEach begin="1" end="${formula.two}" varStatus="loop">
						<img class="queue" src="imgs/croc.png">
					</c:forEach>
				</div>
				<div class="col-md-4">
					<div class="formularesult">
						<c:forEach begin="1" end="${formula.result }" varStatus="loop">
							<img class="queue" src="imgs/croc.png" />
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- 显示结果选择按钮 -->
			<div class="row">
				<div class="col-md-1">

					<button type="button" class="btn btn-default btn-select" value=0
						onclick="determine(0,300,300);">0</button>
				</div>
				<div class="col-md-1">

					<button type="button" class="btn btn-default btn-select" value=1
						onclick="determine(1,300,300);">1</button>
				</div>
				<div class="col-md-1">

					<button type="button" class="btn btn-default btn-select" value=2
						onclick="determine(2,300,300);">2</button>
				</div>
				<div class="col-md-1">

					<button type="button" class="btn btn-default btn-select" value=3
						onclick="determine(3,300,300);">3</button>
				</div>
				<div class="col-md-1">

					<button type="button" class="btn btn-default btn-select" value=4
						onclick="determine(4,300,300);">4</button>
				</div>
				<div class="col-md-1">

					<button type="button" class="btn btn-default btn-select" value=5
						onclick="determine(5,300,300);">5</button>
				</div>
				<div class="col-md-1">

					<button type="button" class="btn btn-default btn-select" value=6
						onclick="determine(6,300,300);">6</button>
				</div>
				<div class="col-md-1">

					<button type="button" class="btn btn-default btn-select" value=7
						onclick="determine(7,300,300);">7</button>
				</div>
				<div class="col-md-1">

					<button type="button" class="btn btn-default btn-select" value=8
						onclick="determine(8,300,300);">8</button>
				</div>
				<div class="col-md-1">

					<button type="button" class="btn btn-default btn-select" value=9
						onclick="determine(9,300,300);">9</button>
				</div>
				<div class="col-md-1">

					<button type="button" class="btn btn-default btn-select" value=10
						onclick="determine(10,300,300);">10</button>
				</div>
				<div class="col-md-1"></div>
			</div>

		</c:if>

		<c:if test="${empty times || times<=0 }">
			<div>
				<h1>恭喜你完成练习。</h1>

				<a href="javascript:window.location = 'index.jsp?name=${name }';">再来一次</a>
				<a href="javascript:window.close();">结束吧</a>
			</div>
		</c:if>
	</div>
</body>
</html>