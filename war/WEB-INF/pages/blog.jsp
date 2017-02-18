<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>个人 &amp; 博客</title>

<!-- meta -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/ionicons.min.css">
<link rel="stylesheet" href="/css/pace.css">
<link rel="stylesheet" href="/css/custom.css">

<!-- js -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/pace.min.js"></script>
<script src="/js/modernizr.custom.js"></script>

</head>
<body style="word-break:break-all">
	<jsp:include page="header.jsp" flush="true" />
	<div class="content-body">
		<div class="container">
			<div class="row">
				<main class="col-md-12"> 
					<jsp:include page="main_body.jsp" flush="true" /> 
				</main>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true"/>
	<jsp:include page="mobilemenu.jsp" flush="true"/>
	<script src="/js/script.js"></script>
</body>
</html>