package com.llm.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.appengine.api.datastore.Text;
import com.llm.domain.Blog;
import com.llm.domain.BlogPage;
import com.llm.service.BlogService;
import com.llm.utils.MailSenderInfo;
import com.llm.utils.SimpleMailSender;

@Controller
@RequestMapping("/")
public class MainController {

	@Resource
	private BlogService blogService;

	@RequestMapping("/")
	public String main(HttpServletRequest request,ModelMap model) {
		BlogPage blogPage = blogService.getBlogPage(request,model);
		List<Blog> recentList = blogService.getRecentList();
		if (recentList.isEmpty()) {
			model.addAttribute("recentList", null);
		} else {
			model.addAttribute("recentList", recentList);
		}
		if (blogPage==null||blogPage.getList().isEmpty()) {
			model.addAttribute("pagebean", null);
		} else {
			model.addAttribute("pagebean", blogPage);
		}
		return "main";
	}

	@RequestMapping("/blog")
	public String blog(HttpServletRequest request,ModelMap model) {
		BlogPage blogPage = blogService.getBlogPage(request,model);
		if (blogPage.getList().isEmpty()) {
			model.addAttribute("pagebean", null);
		} else {
			model.addAttribute("pagebean", blogPage);
		}
		return "blog";
	}

	@RequestMapping("/about")
	public String about() {
		return "about";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public void contact(HttpServletRequest request) {
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("subject"));
		System.out.println(request.getParameter("message"));
		
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost("smtp.163.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("llm877626533@163.com");
		mailInfo.setPassword("19930826");// 您的邮箱密码
		mailInfo.setFromAddress("llm877626533@163.com");
		mailInfo.setToAddress("877626533@qq.com");
		mailInfo.setSubject(request.getParameter("subject"));
		mailInfo.setContent(request.getParameter("name")+request.getParameter("email")+request.getParameter("message"));
		// 这个类主要来发鿁邮仿
		SimpleMailSender sms = new SimpleMailSender();
//		for(int i=0;i<5;i++)
		sms.sendTextMail(mailInfo);// 发鿁文体格弿
		
		return;
	}
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact() {
		return "contact";
	}

	@RequestMapping(value = "/content/{key}", method = RequestMethod.GET)
	public String content(@PathVariable String key, ModelMap model) {
		Blog blog = blogService.getBlogByKey(key);
		if (blog == null)
			model.addAttribute("blog", null);
		else
			model.addAttribute("blog", blog);
		
		List<Blog> recentList = blogService.getRecentList();
		if (recentList.isEmpty()) {
			model.addAttribute("recentList", null);
		} else {
			model.addAttribute("recentList", recentList);
		}
		return "content";
	}

	
	@RequestMapping(value = "/addblog", method = RequestMethod.GET)
	public String addblog() {
		return "addblog";
	}
	
	@RequestMapping(value = "/update/{key}", method = RequestMethod.GET)
	public String preupdate(@PathVariable String key, ModelMap model) {
		Blog blog = blogService.getBlogByKey(key);
		if (blog == null)
			model.addAttribute("blog", null);
		else
			model.addAttribute("blog", blog);
		
		List<Blog> recentList = blogService.getRecentList();
		if (recentList.isEmpty()) {
			model.addAttribute("recentList", null);
		} else {
			model.addAttribute("recentList", recentList);
		}
		return "update";
	}
	
	@RequestMapping(value = "/update/{key}", method = RequestMethod.POST)
	public String update(@PathVariable String key, HttpServletRequest request, ModelMap model) {
		Blog blog = new Blog();
		blog.setTitle(request.getParameter("title"));
		blog.setContent(new Text(request.getParameter("content")));
		blog.setCategory(request.getParameter("category"));
		blog.setDescription(request.getParameter("description"));
		blogService.updateBlogByKey(key,blog);
		model.addAttribute("blog", blog);
		return "content";
	}
	
	@RequestMapping(value = "/delete/{key}", method = RequestMethod.GET)
	public String delete(@PathVariable String key) {
		blogService.deleteBlogByKey(key);
		return "redirect:/";
	}

	@RequestMapping(value = "/addblog", method = RequestMethod.POST)
	public String addblog(HttpServletRequest request) {
		blogService.addblog(request);
		return "main";
	}
}
