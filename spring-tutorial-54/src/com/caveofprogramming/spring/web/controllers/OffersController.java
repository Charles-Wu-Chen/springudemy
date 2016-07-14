package com.caveofprogramming.spring.web.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.caveofprogramming.spring.web.dao.Offer;
import com.caveofprogramming.spring.web.service.OffersService;

@Controller
public class OffersController {
	/*
	@RequestMapping("/")
	public ModelAndView showHome(HttpSession session) {
		session.setAttribute("Name", "Session Name");
		
		ModelAndView mv = new ModelAndView("home"); // request scope
		Map <String, Object> model = mv.getModel();
		
		model.put("Name", "Model Name");
		return mv;
	}*/
	
	@Autowired
	private OffersService offersService;

	@RequestMapping("/")
	public String showHome(HttpSession session, Model model) {
		session.setAttribute("sessionName", "1stSession Name");
		model.addAttribute("requestName", "<b>Model Name</b>");
		
		List<Offer> offers = offersService.getCurrent();
		model.addAttribute("offers", offers);
		
		return "home";
	}
}
