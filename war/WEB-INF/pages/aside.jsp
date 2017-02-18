<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.llm.domain.Blog"%>
<%@ page import="com.google.appengine.api.datastore.KeyFactory"%>
<aside class="col-md-4">
	<div class="widget widget-recent-posts">
		<h3 class="widget-title">最近发布</h3>
		<ul>
		<%
	if (request.getAttribute("recentList") != null) {
		List<Blog> blogs = (List<Blog>) request.getAttribute("recentList");
		if (!blogs.isEmpty()) {
			for (Blog blog : blogs) {
%>
			<li><a href="/content/<%=KeyFactory.keyToString(blog.getKey())%>"><%=blog.getTitle()%></a></li>
			<%
	        }

		}

	}
%>
		</ul>
	</div>
	<div class="widget widget-archives">
		<h3 class="widget-title">日期归档</h3>
		<ul>
			<li><a href="#">November 2014</a></li>
			<li><a href="#">September 2014</a></li>
			<li><a href="#">January 2013</a></li>
		</ul>
	</div>

	<div class="widget widget-category">
		<h3 class="widget-title">分类浏览</h3>
		<ul>
			<li><a href="#">Web Design</a></li>
			<li><a href="#">Web Development</a></li>
			<li><a href="#">SEO</a></li>
		</ul>
	</div>
</aside>