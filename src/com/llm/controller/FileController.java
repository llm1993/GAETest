package com.llm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/upload")
public class FileController {

	@RequestMapping("img")
	public String upload(){
		
		return "upload";
	}
	
	@RequestMapping("get")
	public String get(){
		
		return "main";
	}
}
