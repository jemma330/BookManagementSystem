package com.qdu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ComponentController {

	@RequestMapping("/home.do")
	public String homepage() {
		return "home";
	}
}
