package com.llm.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.google.appengine.api.datastore.Text;
import com.llm.dao.BlogDao;
import com.llm.domain.Blog;
import com.llm.domain.BlogPage;

@Service
public class BlogService {
	
	@Resource
	private BlogDao blogDao;
	
	public BlogPage getBlogPage(HttpServletRequest request,ModelMap model){
		int page = 0;
		if(request.getParameter("page")!=null)
			page = Integer.parseInt(request.getParameter("page"));
		else
			page = 1;
		
		int total = blogDao.getCount();

		BlogPage blogPage = new BlogPage(page,total);
		
		blogPage.setList(blogDao.getList(blogPage));
		model.addAttribute("pages", (total+10)/10);
		int a = (int) model.get("pages");
		return blogPage;
	}
	
	public Blog getBlogByKey(String key){
		return blogDao.getBlogByKey(key);
	}

	public void addblog(HttpServletRequest request) {
		Blog blog = new Blog();
		blog.setTitle(request.getParameter("title"));
		blog.setContent(new Text(request.getParameter("content")));
		blog.setCategory(request.getParameter("category"));
		blog.setDescription(request.getParameter("description"));
		blog.setDate(new Date());
		blogDao.addblog(blog);
	}

	public void deleteBlogByKey(String key) {
		blogDao.deleteBlogByKey(key);
	}

	public List<Blog> getRecentList() {
		return blogDao.getRecentList();
	}

	public void updateBlogByKey(String key ,Blog blog) {
		blogDao.updateBlogByKey(key,blog);
	}
}
