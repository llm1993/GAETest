package com.llm.controller;

import java.io.OutputStream;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.appengine.api.datastore.Text;
import com.llm.domain.MyFile;
import com.llm.utils.PMF;

@Controller
@RequestMapping("/")
public class FileController {
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	protected String upload(HttpServletRequest req) {
		System.out.println(req.getParameter("filename"));
		System.out.println(req.getParameter("filecode"));
		MyFile myFile = new MyFile();
		String filename = req.getParameter("filename");
		if (filename.contains("\\")) {
			filename = filename.substring(filename.lastIndexOf("\\") + 1);
		}
		myFile.setFilename(filename);
		myFile.setFilecode(new Text(req.getParameter("filecode")));
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try {
			pm.makePersistent(myFile);
		} finally {
			pm.close();
		}
		return "redirect:imglist";
	}

	@RequestMapping(value = "/img/{key}", method = RequestMethod.GET)
	public void img(@PathVariable String key, HttpServletResponse response) {
		PersistenceManager pm = PMF.get().getPersistenceManager();

		try {
			MyFile c = pm.getObjectById(MyFile.class, key);
			response.setContentType("image/jpeg");
	        OutputStream stream = response.getOutputStream();
	        System.out.println(c.getFilecode().getValue());
	        String code = c.getFilecode().getValue().trim();
	        stream.write(Base64.decodeBase64(code.substring(code.indexOf(",")+1)));
	        stream.flush();
	        //stream.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			pm.close();
		}

	}
	@RequestMapping(value = "/addimg", method = RequestMethod.GET)
	public String addimg() {
		return "addimg";
	}
	@RequestMapping(value = "/imglist", method = RequestMethod.GET)
	public String list(ModelMap model) {

		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(MyFile.class);
		// q.setOrdering("filename desc");

		List<MyFile> results = null;

		try {
			results = (List<MyFile>) q.execute();

			if (results.isEmpty()) {
				model.addAttribute("list", null);
			} else {
				model.addAttribute("list", results);
			}

		} finally {
			q.closeAll();
			pm.close();
		}

		return "imglist";

	}

	@RequestMapping(value = "/deleteimg/{key}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String key, ModelMap model) {

		PersistenceManager pm = PMF.get().getPersistenceManager();

		try {

			MyFile c = pm.getObjectById(MyFile.class, key);
			pm.deletePersistent(c);

		} finally {
			pm.close();
		}

		// return to list
		return new ModelAndView("redirect:../imglist");
	}
}
