package com.pj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/IT")
	public String IT() {
		return "IT";
	}

	@GetMapping("/lecture")
	public String lecture() {
		return "leture";
	}

	@GetMapping("/swLecture")
	public String swLecture() {
		return "swLecture";
	}
	

}
