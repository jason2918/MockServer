package com.test.mock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/department")
public class DepartmentController {

	@RequestMapping("/info")
	@ResponseBody
	public String getDepartmentInfos() {
		
		System.out.println("0000000000000000000000000");
		return "dfdfdd";
	}
}
