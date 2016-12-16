package com.llm.controller;

import java.util.Date;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.llm.domain.Blog;
import com.llm.domain.Customer;
import com.llm.utils.PMF;

@Controller
@RequestMapping("/")
public class MainController {
	
	@RequestMapping("/main")
	public String main(ModelMap model){
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Blog.class);
		q.setOrdering("date desc");

		List<Blog> results = null;

		try {
			results = (List<Blog>) q.execute();

			if (results.isEmpty()) {
				model.addAttribute("blogList", null);
			} else {
				model.addAttribute("blogList", results);
			}

		} finally {
			q.closeAll();
			pm.close();
		}

		return "main";
	}
	@RequestMapping("/preaddblog")
	public String pre_addblog(){
		return "addblog";
	}
	@RequestMapping(value="/addblog", method = RequestMethod.POST)
	public String addblog(HttpServletRequest request){
		String content = request.getParameter("name");
		System.out.println(content);
		Blog blog = new Blog();
		blog.setContent(content);
		blog.setTitle("TEST");
		blog.setDate(new Date());
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try {
			pm.makePersistent(blog);
		} finally {
			pm.close();
		}
		return "main";
	}
}
