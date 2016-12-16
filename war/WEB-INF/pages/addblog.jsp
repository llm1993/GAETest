<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Add Blog</title>
<link href="/css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/css/wangEditor.min.css">
<style type="text/css">
#div1 {
	width: 100%;
	height: 500px;
}
</style>
</head>
<body>
	<h1>Add Blog</h1>


	<!--用父容器来控制宽度-->
	<div
		style="width: 90%; margin: auto; position: absolute; left: 0; right: 0;">
		<div id="div1">
			<p>请输入内容...</p>
		</div>
	</div>
	<div id="submit"
		style="margin: auto; position: absolute; top: 650px; right: 20%; bottom: 0;">
		<button id="button">提交</button>
	</div>
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/wangEditor.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$("button").click(function(){
		    $.post("addblog",
		    {
		      name:$("#div1")[0].innerHTML
		      
		    },
		    function(data,status){
		      alert("数据：" + $("#div1")[0].innerHTML + "\n状态：" + status);
		    });
		  });
		});
	</script>
	<script type="text/javascript">
		$(function() {
			var editor = new wangEditor('div1');
			editor.create();
		});
		
	</script>
</body>
</html>