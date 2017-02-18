<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Black &amp; White</title>

<!-- meta -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/ionicons.min.css">
<link rel="stylesheet" href="/css/pace.css">
<link rel="stylesheet" href="/css/custom.css">
<link rel="stylesheet" type="text/css" href="/css/wangEditor.min.css">

<!-- js -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/pace.min.js"></script>
<script src="/js/modernizr.custom.js"></script>

<style type="text/css">
#content {
	width: 100%;
	height: 500px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	<div class="content-body">
		<div class="container">
			<div class="row">
				<h1 style="text-align: center;">添加博客</h1>
				<div style="width: 95%;">
					<label>请输入标题： </label><label id="needtitle"></label>
					<div style="text-align: center;">
						<input id="title" type="text" style="width: 100%;" required></input>
					</div>
					<label>请选择标签： </label><label id="needcategory"></label>
					<div>
						<input list="categorylist" id="category"/>
						<datalist id="categorylist">
							<option value="Java">
							<option value="C++">
							<option value=".NET">
						</datalist>
					</div>
					<label>请输入描述：</label><label id="needdescription"></label>
					<div style="text-align: center;">
						<textarea id="description" name="message" rows="4" style="width: 100%;" required></textarea>
					</div>
					<label>请输入内容：</label><label id="needcontent"></label>
					<!--用父容器来控制宽度-->
					<div style="width: 100%; margin: 0 auto;">
						<div id="content">
							<p></p>
						</div>
					</div>
					<br>
					
					<button id="button"  class="btn-send btn-5 btn-5b ion-ios-paperplane">
										<span>发&nbsp;&nbsp;布</span>
									</button>
					
					<!-- <div id="submit" style="text-align: center;">
						<button id="button">发布</button>
					</div> -->
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true" />
	<jsp:include page="mobilemenu.jsp" flush="true" />


	<script src="/js/script.js"></script>
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/wangEditor.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("button").click(function() {
				if($("#title").val().trim()==""){
					document.getElementById("needtitle").innerHTML = "请输入标题！！";
					document.getElementById("needtitle").style.color="#f00";
					return;
				}
				if($("#category").val().trim()==""){
					document.getElementById("needcategory").innerHTML = "请输入标签！！";
					document.getElementById("needcategory").style.color="#f00";
					return;
				}
				if($("#content")[0].innerHTML.trim()=="<p><br></p>"||$("#description").val().trim()==""){
					document.getElementById("needcontent").innerHTML = "请输入内容！！";
					document.getElementById("needcontent").style.color="#f00";
					return;
				}
				if($("#description").val().trim()==""){
					document.getElementById("needdescription").innerHTML = "请输入描述！！";
					document.getElementById("needdescription").style.color="#f00";
					return;
				}
				
				$.post("/addblog", {
					title : $("#title").val(),
					category : $("#category").val(),
					content : $("#content")[0].innerHTML,
					description : $("#description").val()
				}, function(data, status) {
					window.location.href = "/";
				});
			});
		});
	</script>
	<script type="text/javascript">
		$(function() {
			var editor = new wangEditor('content');
			editor.create();
		});
	</script>
</body>
</html>