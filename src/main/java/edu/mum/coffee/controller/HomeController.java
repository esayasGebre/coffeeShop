package edu.mum.coffee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class HomeController {
	
	@GetMapping({"/", "/index", "/home"})
	public String homePage() {
		return "home";
	}
	
	@GetMapping({"/secure"})
	public String securePage() {
		
/*		if(){
			
		}else{
			
		}*/
		
		
		return "secure";
	}
	@GetMapping({"/front"})
	public String frontPage() {
		return "front";
	}
	
	
/*	@GetMapping({"/", "/index", "/home"})
	public String homePage() {
		return "redirect:/customer";
	}*/
	
	@RequestMapping("/exit")
	public String success(SessionStatus ss){
		ss.setComplete();
		return "redirect:/products";
	}
	
	
}
