package com.llm.dao;

import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.jdo.Transaction;

import org.springframework.stereotype.Component;

import com.google.appengine.api.datastore.Text;
import com.llm.domain.Blog;
import com.llm.domain.BlogPage;
import com.llm.utils.PMF;

@Component
public class BlogDao {

	public int getCount() {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery("select count(key) from "+Blog.class.getName());
		int count = 0;
		try {
			count = Integer.parseInt(q.execute("Smith").toString());
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			q.closeAll();
			pm.close();
		}
		return count;
	}
	
	public List getList(BlogPage blogPage) {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Blog.class);
		q.setRange((blogPage.getCurrentPageNo()-1)*10, (blogPage.getCurrentPageNo()-1)*10+10);
		q.setOrdering("date desc");
		List<Blog> results = null;

		try {
			results = (List<Blog>) q.execute();
			results = new ArrayList(results);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			q.closeAll();
			pm.close();
		}
		return results;
	}

	public Blog getBlogByKey(String key) {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Blog blog = null;
		try {
			blog = pm.getObjectById(Blog.class, key);
			if (blog.getCount() == null)
				blog.setCount(1);
			else
				blog.setCount(blog.getCount() + 1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pm.close();
		}
		return blog;
	}

	public void addblog(Blog blog) {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try {
			Transaction trans = pm.currentTransaction();
			pm.makePersistent(blog);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pm.close();
		}
	}

	public void deleteBlogByKey(String key) {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try {
			Blog blog = pm.getObjectById(Blog.class, key);
			pm.deletePersistent(blog);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pm.close();
		}

	}

	public List<Blog> getRecentList() {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Blog.class);
		q.setRange(0, 3);
		q.setOrdering("date desc");
		List<Blog> results = null;

		try {
			results = (List<Blog>) q.execute();
			results = new ArrayList(results);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			q.closeAll();
			pm.close();
		}
		return results;
	}

	public void updateBlogByKey(String key,Blog blog) {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Blog blogSrc = null;
		try {
			blogSrc = pm.getObjectById(Blog.class, key);
			blogSrc.setTitle(blog.getTitle());
			blogSrc.setContent(blog.getContent());
			blogSrc.setCategory(blog.getCategory());
			blogSrc.setDescription(blog.getDescription());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pm.close();
		}
	}

}
