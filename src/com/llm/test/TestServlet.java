package com.llm.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.http.*;

@SuppressWarnings("serial")
public class TestServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain");
		InputStream is = req.getInputStream();
		byte[] b = new byte[1024];
		int length =0;
		while((length=is.read(b))!=-1){
			System.out.println(new String(b,length));
		}
//		resp.getWriter().println("Hello, world");
	}
}
