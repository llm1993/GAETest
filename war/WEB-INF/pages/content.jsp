<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.llm.domain.Blog"%>
<%@ page import="com.google.appengine.api.datastore.KeyFactory"%>
<!DOCTYPE html>
<html>
<head>
<title>Black &amp; White</title>

<!-- meta -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
	img{max-width:100% !important; height:auto !important;}
</style>
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
	<%
		Blog blog = new Blog();
		if (request.getAttribute("blog") != null) {
			blog = (Blog) request.getAttribute("blog");
		}
	%>

	<jsp:include page="header.jsp" flush="true" />
	<div class="content-body">
		<div class="container">
			<div class="row">
				<main class="col-md-8">
				<article class="post post-1">
					<header class="entry-header">
						<h1 class="entry-title"><%=blog.getTitle()%></h1>
						<div class="entry-meta">
							<span class="post-category"><a href="#"><%=blog.getCategory()%></a></span>
							<span class="post-date"><a href="#"><time
										class="entry-date" datetime="<%=blog.getDate()%>"><%=blog.getDate()%></time></a></span>
							<span class="post-author"><a href="#"><%=blog.getAuthor() %></a></span>
							<span class="comments-link"><a href="#">4 Comments</a></span>
						</div>
					</header>
					<div class="entry-content clearfix">
						<%=blog.getContent().getValue() %>
					</div>
				</article>
				</main>
				<jsp:include page="aside.jsp" flush="true" />
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true" />
	<jsp:include page="mobilemenu.jsp" flush="true" />
	<script src="/js/script.js"></script>
</body>
</html>