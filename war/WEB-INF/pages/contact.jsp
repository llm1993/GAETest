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
<body>
	<jsp:include page="header.jsp" flush="true" />
	<div class="content-body">
		<div class="container">
			<div class="row">
				<main class="col-md-12">
				<h1 class="page-title">联 系</h1>
				<article class="post">
					<div class="entry-content clearfix">
						<form action="#" method="post" class="contact-form">
							<div class="row">
								<div class="col-md-6 col-md-offset-3">
									<input type="text" name="name" placeholder="姓名" required>
									<input type="email" name="email" placeholder="Email" required>
									<input type="text" name="subject" placeholder="主 题"
										required>
									<textarea name="message" rows="7" placeholder="留 言"
										required></textarea>
									<button class="btn-send btn-5 btn-5b ion-ios-paperplane">
										<span>给我留言</span>
									</button>
								</div>
							</div>
							<!-- row -->
						</form>
					</div>
				</article>
				</main>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true" />
	<jsp:include page="mobilemenu.jsp" flush="true" />
	<script src="/js/script.js"></script>
</body>
</html>