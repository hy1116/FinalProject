package com.spring.bnb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HYController {
	
	@RequestMapping(value = "/index.air", method = RequestMethod.GET)
	public String index() {
		return "home/homeDetail.hometiles";
	}
	@RequestMapping(value = "/apiTest.air", method = RequestMethod.GET)
	public String apiTest() {
		return "apiTest.notiles";
	} 
}

