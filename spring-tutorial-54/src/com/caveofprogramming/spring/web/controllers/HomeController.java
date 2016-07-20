package com.caveofprogramming.spring.web.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.caveofprogramming.spring.web.dao.Offer;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showHome(HttpSession session, Model model) {
		session.setAttribute("sessionName", "1stSession Name");
		model.addAttribute("requestName", "<b>Model Name</b>");
		
		
		return "home";
	}
	
}
