package edu.mum.coffee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class HomeController {

	/**
	 * 
	 * @return
	 */
	@GetMapping({ "/", "/index", "/home" })
	public String homePage() {
		return "home";
	}

	/**
	 * 
	 * @param ss
	 * @return
	 */
	@RequestMapping("/exit")
	public String success(SessionStatus ss) {
		ss.setComplete();
		return "redirect:/products";
	}

	/**
	 * 
	 * @return
	 */
	@GetMapping({ "/secure" })
	public String securePage() {
		return "secure";
	}
}
