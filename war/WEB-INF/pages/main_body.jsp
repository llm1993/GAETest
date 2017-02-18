<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.llm.domain.*"%>
<%@ page import="com.google.appengine.api.datastore.KeyFactory"%>

<%
	if (request.getAttribute("pagebean") != null) {
		BlogPage blogPage = (BlogPage) request.getAttribute("pagebean");
		if (!blogPage.getList().isEmpty()) {
			List<Blog> blogs = (List<Blog>) blogPage.getList();
			for (Blog blog : blogs) {
%>
<article class="post post-1">
	<header class="entry-header">
		<h1 class="entry-title">
			<a href="/content/<%=KeyFactory.keyToString(blog.getKey())%>"><%=blog.getTitle()%></a>
		</h1>
		<div class="entry-meta">
			<span class="post-category"><a href="#"><%=blog.getCategory()%></a></span>
			<span class="post-date"><a href="#"><time
						class="entry-date" datetime="<%=blog.getDate()%>"><%=blog.getDate()%></time></a></span>
			<span class="post-author"><a href="#"><%=blog.getAuthor()%></a></span>
			<span class="comments-link"><a href="#">4 Comments</a></span>
		</div>
	</header>
	<div class="entry-content clearfix">
		<p><%=blog.getDescription()%></p>
		<div class="read-more cl-effect-14">
			<a href="/content/<%=KeyFactory.keyToString(blog.getKey())%>"
				class="more-link">继续阅读<span class="meta-nav">→</span></a>
		</div>
	</div>
</article>
<%
	}

		}
%>
<div>
	<nav>
		<ul class="pager">
			<%
				if (blogPage.getCurrentPageNo() != 1) {
			%>
			<li class="previous"><a href="<%="?page=" + (blogPage.getCurrentPageNo() - 1)%>">上一页</a></li>
			<%
				} else {
			%>
			<li class="previous disabled"><a>上一页</a></li>
			<%
				}
					for (int i = 1; i <= blogPage.getTotalPage(); i++) {
						if (i == blogPage.getCurrentPageNo()) {
			%>
			<li class="disabled"><a><%=i%></a></li>
			<%
				} else {
			%>
			<li><a href="<%="?page=" + i%>"><%=i%></a></li>

			<%
				}
					}
					if (blogPage.getCurrentPageNo() != blogPage.getTotalPage()) {
			%>
			<li class="next"><a
				href="<%="?page=" + (blogPage.getCurrentPageNo() + 1)%>">下一页</a></li>
			<%
				} else {
			%>
			<li class="next disabled"><a>下一页</a></li>
			<%
				}
			%>
		</ul>
	</nav>
</div>
<%
	}
%>
